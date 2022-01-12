package he_thong_tu_van_benh_xuong_khop__thi_chtdttt.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import he_thong_tu_van_benh_xuong_khop__thi_chtdttt.entity.Attribute;
import he_thong_tu_van_benh_xuong_khop__thi_chtdttt.entity.AttributeValue;
import he_thong_tu_van_benh_xuong_khop__thi_chtdttt.entity.Case;
import he_thong_tu_van_benh_xuong_khop__thi_chtdttt.entity.Disease;
import he_thong_tu_van_benh_xuong_khop__thi_chtdttt.service.DiseaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
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
        model.addAttribute("attributeDTOs", diseaseService.getAllAttributeDTO());
        return "customer/home";
    }

    @PostMapping
    public void processDiagnose(@RequestParam MultiValueMap<String, String> allRequestParams, Model model) {
        Case _case = new Case(new ArrayList<>());
        allRequestParams.forEach((k, v) -> _case.getAttributes().add(new Attribute(k, v.stream().map(s -> new AttributeValue(s)).collect(Collectors.toList()))));

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
