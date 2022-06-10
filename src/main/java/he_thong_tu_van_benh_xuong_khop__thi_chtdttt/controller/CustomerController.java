package he_thong_tu_van_benh_xuong_khop__thi_chtdttt.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import he_thong_tu_van_benh_xuong_khop__thi_chtdttt.dto.AttributeDTO;
import he_thong_tu_van_benh_xuong_khop__thi_chtdttt.entity.*;
import he_thong_tu_van_benh_xuong_khop__thi_chtdttt.service.DiseaseService;
import org.apache.commons.lang3.tuple.ImmutablePair;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.*;
import java.util.stream.Collectors;

@Controller
@RequestMapping(value = {"", "/customer"})
public class CustomerController {

    private DiseaseService diseaseService;
    private ObjectMapper objectMapper;

    @Autowired
    public CustomerController(DiseaseService diseaseService) {
        this.diseaseService = diseaseService;
        this.objectMapper = new ObjectMapper();
    }

    @GetMapping
    public String showHome(Model model) {
        List<AttributeDTO> attributeDTOs = diseaseService.getAllAttributeDTO();
        model.addAttribute("attributeDTOs", attributeDTOs);
        return "customer/home";
    }

    @PostMapping
    public String processDiagnose(@RequestParam MultiValueMap<String, String> allRequestParams, Model model, HttpServletRequest request) {
        // Kiểm tra session có lưu bệnh k
        ImmutablePair<Double, List<Disease>> diseasesResult = ( ImmutablePair<Double, List<Disease>>) request.getSession().getAttribute("diseasesResult");

        // Chưa chẩn đoán
        if(diseasesResult == null) {
            Case caseInput = new Case(new ArrayList<>());

            // Lọc thuộc tính và tạo thành caseInput
            allRequestParams.forEach((k, v) -> {
                Attribute attribute = new Attribute(k, diseaseService.calculateWeight(k), v.stream().map(s -> {
                    switch (k) {
                        case "Độ tuổi":
                            try {
                                LocalDate localDateNow = new Date().toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
                                LocalDate localDate = new SimpleDateFormat("yyyy-MM-dd").parse(s).toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
                                s = localDateNow.getYear() - localDate.getYear() + "";
                            } catch (ParseException e) { s = ""; }
                            break;
                    }
                    return new AttributeValue(s);
                }).filter(attributeValue -> !attributeValue.getValue().trim().isEmpty()).collect(Collectors.toList()));

                if(!attribute.getAttributeValues().isEmpty())
                    caseInput.getAttributes().add(attribute);
            });

            // Thực hiện so sánh và chuẩn đoán bệnh
            ImmutablePair<Double, List<Disease>> diseases = diseaseService.caseBaseReasoning(caseInput);

            // Lọc ra các triệu chứng của mức độ
            List<AttributeDTO> attributeDTOs = new ArrayList<>();

            // Lặp các triệu chứng của các mức dộ bệnh, để lọc ra các triệu chứng cho người dùng chọn
            diseases.getValue().forEach(disease -> {
                disease.getDegrees().forEach(degree -> {
                    try {
                        degree.getSymptoms().forEach(symptom -> {

                            // Tìm trong list có triệu chứng nào là symptom.getName() không
                            AttributeDTO attributeDTO = attributeDTOs.stream().filter(attributeDTOi -> attributeDTOi.getName().trim().equalsIgnoreCase(symptom.getName().trim())).findFirst().orElse(null);

                            // Nếu có
                            if (attributeDTO != null)
                                symptom.getSymptomValues().stream().forEach(symptomValue -> {
                                    if (attributeDTO.getValues().stream().allMatch(value -> !value.trim().equalsIgnoreCase(symptomValue.getValue().trim())))
                                        attributeDTO.getValues().add(symptomValue.getValue());
                                });

                                // Nếu không
                            else
                                attributeDTOs.add(new AttributeDTO(symptom.getName(), symptom.getSymptomValues().stream().map(symptomValue -> symptomValue.getValue()).collect(Collectors.toList())));
                        });
                    } catch (NullPointerException e) {}
                });
            });

            // Nếu bệnh không có mức độ
            if(attributeDTOs.isEmpty()) {
                model.addAttribute("caseInput", caseInput);
                model.addAttribute("diseasesResult", diseases);
                return "customer/result";
            }

            // Nếu bệnh có mức độ, hỏi thêm triệu chứng
            else {
                request.getSession().setAttribute("caseInput", caseInput);
                request.getSession().setAttribute("diseasesResult", diseases);
                model.addAttribute("attributeDTOs", attributeDTOs);
                return "customer/home";
            }
        }

        // Đã chẩn doán
        else {
            Case caseInput = (Case) request.getSession().getAttribute("caseInput");
            ImmutablePair<Double, List<Disease>> diseases =  diseasesResult;

            // Xóa session
            request.getSession().removeAttribute("diseasesResult");
            request.getSession().removeAttribute("caseInput");

            // Thêm triệu chứng người dùng chọn vào caseInput
            allRequestParams.forEach((k, v) -> {
                Attribute attribute = caseInput.getAttributes().stream().filter(attributei -> attributei.getName().trim().equalsIgnoreCase(k.trim())).findFirst().orElse(null);

                if(attribute == null) {
                    attribute = new Attribute(k, v.stream().map(s -> new AttributeValue(s)).filter(attributeValue -> !attributeValue.getValue().trim().isEmpty()).collect(Collectors.toList()));

                    if(!attribute.getAttributeValues().isEmpty())
                        caseInput.getAttributes().add(attribute);
                }
                else {
                    for(String str: v) {
                        if(attribute.getAttributeValues().stream().map(attributeValue -> attributeValue.getValue()).allMatch(value -> !value.trim().equalsIgnoreCase(str.trim())))
                            attribute.getAttributeValues().add(new AttributeValue(str));
                    }
                }
            });

            // Xóa mức độ người dùng không mắc phải (chỉ cần có 1 triệu chứng của giai đoạn cao nhất thì kết luận giai đoạn cao nhất)
            for(Disease disease: diseases.getValue()) {
                for(int i = disease.getDegrees().size()-1 ; i >= 0 ; i--) {
                    Degree degree = disease.getDegrees().get(i);
                    if(degree.getSymptoms().stream().anyMatch(symptom -> symptom.getSymptomValues().stream().anyMatch(symptomValue -> {
                        if(allRequestParams.containsKey(symptom.getName()))
                            return allRequestParams.get(symptom.getName()).stream().anyMatch(str -> str.trim().equalsIgnoreCase(symptomValue.getValue().trim()));
                        return false;
                    }))) {
                        disease.setDegrees(new ArrayList<>(Arrays.asList(degree)));
                        break;
                    }

                    if(i == 0)
                        if(degree.getSymptoms().isEmpty()) {
                            disease.setDegrees(new ArrayList<>(Arrays.asList(degree)));
                        }
                        else disease.setDegrees(new ArrayList<>());
                }
            }

            // Lưu vào model để hiển thị lên view
            model.addAttribute("caseInput", caseInput);
            model.addAttribute("diseasesResult", diseases);
            return "customer/result";
        }
    }

    @GetMapping("/contact")
    public String showContact() {
        return "customer/contact";
    }

    @GetMapping("/manual")
    public String showManual() {
        return "customer/manual";
    }
}
