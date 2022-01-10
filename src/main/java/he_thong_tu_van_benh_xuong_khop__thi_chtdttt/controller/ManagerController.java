package he_thong_tu_van_benh_xuong_khop__thi_chtdttt.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import he_thong_tu_van_benh_xuong_khop__thi_chtdttt.entity.Disease;
import he_thong_tu_van_benh_xuong_khop__thi_chtdttt.service.DiseaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("/manager")
public class ManagerController {

    private DiseaseService diseaseService;
    private ObjectMapper objectMapper;

    @Autowired
    public ManagerController(DiseaseService diseaseService) {
        this.diseaseService = diseaseService;
        this.objectMapper = new ObjectMapper();
    }

    @GetMapping({"", "/diseases"})
    public String showAllDiseases(Model model) {
        model.addAttribute("diseases", diseaseService.findAll());
        return "manager/disease-list";
    }

    @GetMapping("/disease/add")
    public String showAddDisease() {
        return "manager/cr-disease";
    }

    @GetMapping("/disease/read/{id}")
    public String showEditDisease(Model model, @PathVariable int id) throws JsonProcessingException {
        Disease disease = diseaseService.findByID(id);
        if(disease != null) {
            model.addAttribute("disease", objectMapper.writer().withDefaultPrettyPrinter().writeValueAsString(disease));
            return "manager/cr-disease";
        }

        return "redirect:/manager/diseases";
    }

    @PostMapping("/disease/delete")
    public String deleteDisease(@RequestParam int id) {
        diseaseService.deleteByID(id);
        return "redirect:/manager/diseases";
    }

    @PostMapping("/disease/add")
    public String addDisease(@RequestParam String disease) throws JsonProcessingException {
        Disease _disease = objectMapper.readValue(disease, Disease.class);
        diseaseService.save(_disease);
        return "redirect:/manager/diseases";
    }
}
