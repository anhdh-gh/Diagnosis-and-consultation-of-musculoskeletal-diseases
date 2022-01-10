package he_thong_tu_van_benh_xuong_khop__thi_chtdttt.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import he_thong_tu_van_benh_xuong_khop__thi_chtdttt.entity.Disease;
import he_thong_tu_van_benh_xuong_khop__thi_chtdttt.service.DiseaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    private DiseaseService diseaseService;
    private ObjectMapper objectMapper;

    @Autowired
    public CustomerController(DiseaseService diseaseService) {
        this.diseaseService = diseaseService;
        this.objectMapper = new ObjectMapper();
    }

    @GetMapping("")
    public String showHome() {
        return "customer/home";
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
