package he_thong_tu_van_benh_xuong_khop__thi_chtdttt.service;

import he_thong_tu_van_benh_xuong_khop__thi_chtdttt.dto.AttributeDTO;
import he_thong_tu_van_benh_xuong_khop__thi_chtdttt.entity.Attribute;
import he_thong_tu_van_benh_xuong_khop__thi_chtdttt.entity.AttributeValue;
import he_thong_tu_van_benh_xuong_khop__thi_chtdttt.entity.Case;
import he_thong_tu_van_benh_xuong_khop__thi_chtdttt.entity.Disease;
import he_thong_tu_van_benh_xuong_khop__thi_chtdttt.repository.DiseaseRepository;
import he_thong_tu_van_benh_xuong_khop__thi_chtdttt.utils.VNCharacterUtils;
import javafx.util.Pair;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.concurrent.atomic.AtomicReference;
import java.util.stream.Collectors;

@Service
public class DiseaseService {

    private DiseaseRepository diseaseRepository;

    @Autowired
    public DiseaseService(DiseaseRepository diseaseRepository) {
        this.diseaseRepository = diseaseRepository;
    }

    public Disease save(Disease disease) {
        return diseaseRepository.set(disease);
    }

    public Disease findByID(int ID) {
        Disease disease = diseaseRepository.get(ID);
        return disease;
    }

    public List<Disease> findAll() {
        List<Disease> diseases = diseaseRepository.findAll();
        return diseases != null ? diseases : new ArrayList<>();
    }

    public void deleteByID(int ID) {
        diseaseRepository.remove(ID);
    }

    public Pair<Double, List<Disease>> caseBaseReasoning(Case caseInput) {
        // Lấy tất cả các case trong hệ thống
        List<Disease> allDiseases = diseaseRepository.findAll();
        allDiseases = allDiseases != null ? allDiseases : new ArrayList<>();

        // Thực hiện so sánh với từng case
        List<Disease> diseasesResult = new ArrayList<>();
        double max = 0.6;
        double sumWeight = 0;
        for(Attribute attribute: caseInput.getAttributes()) {
            sumWeight += attribute.getWeight();
        }

        // 1. Lặp từng case có trong hệ thống
        System.out.println("============================================================= Begin =============================================================\n");
        for (Disease disease : allDiseases) {
            double ketQuaSoSanhCase = 0;

            // 2. Lấy ra từng case trong hệ thống
            Case caseCompare = disease.get_case();

            System.out.println("------------------------------ " + disease.getName() + " ------------------------------");

            // 3. So sánh từng thuộc tính của 2 case với nhau
            for (Attribute attributeCompare : caseCompare.getAttributes()) {
                for (Attribute attributeInput : caseInput.getAttributes()) {

                    // 4. Nếu có thuộc tính giống nhau
                    if (attributeCompare.getName().trim().equalsIgnoreCase(attributeInput.getName().trim())) {

                        // 5. Tính độ so khớp của hai thuộc tính
                        double similarity = 0;
                        for (AttributeValue attributeValueCompare : attributeCompare.getAttributeValues()) { // Lặp từng giá trị của thuộc tính

                            switch (attributeCompare.getName()) {
                                // Nếu so sánh độ tuổi => So sánh nó có nằm trong khoảng của độ tuổi không
                                case "Độ tuổi": {
                                    String[] doTuoiArr = attributeValueCompare.getValue().trim().split("-");
                                    int doTuoiBegin = Integer.parseInt(doTuoiArr[0]);
                                    int doTuoiEnd = Integer.parseInt(doTuoiArr[1]);
                                    if (attributeInput.getAttributeValues().stream().allMatch(attributeValue -> {
                                        int tuoi = Integer.parseInt(attributeValue.getValue().trim());
                                        return tuoi >= doTuoiBegin && tuoi <= doTuoiEnd;
                                    }))
                                        similarity += attributeValueCompare.getComparativeValue();
                                    break;
                                }

                                // Nếu so sánh giá trị => So sánh hai giá trị có giống nhau không
                                default:
                                    // Nếu trong thuộc tính của caseInput có chứa giá trị này
                                    if (attributeInput.getAttributeValues().stream().anyMatch(attributeValue -> attributeValue.getValue().trim().equalsIgnoreCase(attributeValueCompare.getValue().trim())))
                                        similarity += attributeValueCompare.getComparativeValue();
                                    break;
                            }
                        }

                        System.out.println("Thuộc tính: " + attributeInput.getName() + " - Trọng số: " + attributeInput.getWeight() +  " - Độ so khớp: " + similarity);

                        // 6. Nhân độ so khớp với trọng số của thuộc tính, và lưu vào kết quả so sánh
                        ketQuaSoSanhCase += similarity*attributeInput.getWeight();
                    }
                }
            }

            // 7. Tính kết quả
            System.out.println("Ket qua so sanh case: " + ketQuaSoSanhCase + "/" + sumWeight + " = " + ketQuaSoSanhCase/sumWeight + "\n");
            ketQuaSoSanhCase /= sumWeight;

            // 8. Nếu ketquaSoSanhCase = max => Thêm vào list kết quả
            if(ketQuaSoSanhCase == max) {
                diseasesResult.add(disease);
            }

            // 9. Nếu ketQuaSoSanhCase > max => Xóa hết kết quả cũ, và thêm kết quả mới vào
            if(ketQuaSoSanhCase > max) {
                diseasesResult = new ArrayList<>(Arrays.asList(disease));
                max = ketQuaSoSanhCase;
            }
        }

        System.out.println("============================================================= End =============================================================\n\n");
        return new Pair<>(max, sortAttributeSameCaseInput(diseasesResult, caseInput));
    }

    private List<Disease> sortAttributeSameCaseInput(List<Disease> diseasesResult, Case caseInput) {
        List<String> nameAttributes = caseInput.getAttributes().stream().map(attribute -> attribute.getName().trim()).collect(Collectors.toList());

        diseasesResult.forEach(disease -> {
            // Lọc ra những thuộc tính giống với case input và đặt chúng lên đầu của list
            List<Attribute> sameAttributes = new ArrayList<>();
            nameAttributes.forEach(nameAttributeInput -> {
                Attribute attribute = disease.get_case().getAttributes().stream().filter(attributei -> attributei.getName().trim().equalsIgnoreCase(nameAttributeInput.trim())).findFirst().orElse(null);
                if(attribute != null) sameAttributes.add(attribute);
            });

            // Lọc ra các huộc tính không giống với case input và đặt vào cuối của list
            List<Attribute> notSameAttributes = new ArrayList<>(disease.get_case().getAttributes().stream().filter(attributei -> sameAttributes.stream().allMatch(sameAttribute -> !sameAttribute.getName().trim().equalsIgnoreCase(attributei.getName().trim()))).collect(Collectors.toList()));

            // Sắp xếp xong thì lưu vào case kết quả
            disease.get_case().setAttributes(sameAttributes);
            disease.get_case().getAttributes().addAll(notSameAttributes);
        });

        return diseasesResult;
    }

    public double calculateWeight(String nameAttribute) {
        // Lấy ra tất cả các attributes
        List<Attribute> attributes = getAllAttributes();

        // Tính
        double sum = 0;
        double quantity = 0;

        for(Attribute attribute: attributes) {
            if(attribute.getName().trim().equalsIgnoreCase(nameAttribute.trim())) {
                sum +=  attribute.getWeight();
                quantity++;
            }
        }

        return quantity == 0 ? 0 : Math.round(sum/quantity);
    }

    private Disease getDiseaseByAttributeID(int attributeID) {
        List<Disease> diseases = diseaseRepository.findAll();
        return diseases.stream().filter(disease -> disease.get_case().getAttributes().stream().anyMatch(attribute -> attributeID == attribute.getID())).findFirst().orElse(null);
    }

    private List<Attribute> getAllAttributes() {
        List<Disease> diseases = diseaseRepository.findAll();
        if(diseases == null) diseases = new ArrayList<>();

        // Lấy ra tất cả các attributes
        List<Attribute> attributes = new ArrayList<>();
        diseases.stream()
                .map(disease -> disease.get_case().getAttributes())
                .forEach(attributeList -> {
                    attributeList.stream().forEach(attribute -> {
                        attributes.add(attribute);
                    });
                });

        return attributes;
    }

    public List<AttributeDTO> getAllAttributeDTO() {
        // Lấy ra tất cả các attributes
        List<Attribute> attributes = getAllAttributes();

        // Thực hiện lọc giá trị
        List<AttributeDTO> attributeDTOs = new ArrayList<>();
        attributes.stream().forEach(attribute -> {

            AttributeDTO attributeDTO = null;
            for(AttributeDTO attributeDTOi: attributeDTOs)
                if(attributeDTOi.getName().trim().equalsIgnoreCase(attribute.getName().trim()))
                    attributeDTO = attributeDTOi;

            if(attributeDTO != null) {
                attributeDTO.getDiseases().add(getDiseaseByAttributeID(attribute.getID()));

                for(String value: attribute.getAttributeValues().stream().map(attributeValue -> attributeValue.getValue()).collect(Collectors.toList())) {
                    if(attributeDTO.getValues().stream().allMatch(valuei -> !valuei.trim().equalsIgnoreCase(value.trim())))
                        attributeDTO.getValues().add(value);
                }
            }
            else {
                attributeDTO = new AttributeDTO();
                attributeDTO.setName(attribute.getName());
                attributeDTO.setValues(attribute.getAttributeValues().stream().map(attributeValue -> attributeValue.getValue()).collect(Collectors.toList()));
                attributeDTO.setDiseases(new ArrayList<>(Arrays.asList(getDiseaseByAttributeID(attribute.getID()))));
                attributeDTO.setWeight(calculateWeight(attribute.getName()));
                attributeDTOs.add(attributeDTO);
            }
        });

        // Sort theo thứ tự a -> b
        attributeDTOs.sort((o1, o2) -> VNCharacterUtils.removeAccent(o1.getName().trim()).compareToIgnoreCase(VNCharacterUtils.removeAccent(o2.getName().trim())));
        attributeDTOs.forEach(attributeDTO -> attributeDTO.getValues().sort((o1, o2) -> VNCharacterUtils.removeAccent(o1.trim()).compareToIgnoreCase(VNCharacterUtils.removeAccent(o2.trim()))));

        return attributeDTOs;
    }
}
