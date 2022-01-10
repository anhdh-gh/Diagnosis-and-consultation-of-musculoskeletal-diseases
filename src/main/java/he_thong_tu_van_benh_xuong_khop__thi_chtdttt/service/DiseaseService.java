package he_thong_tu_van_benh_xuong_khop__thi_chtdttt.service;

import he_thong_tu_van_benh_xuong_khop__thi_chtdttt.entity.Disease;
import he_thong_tu_van_benh_xuong_khop__thi_chtdttt.repository.DiseaseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class DiseaseService {

    private DiseaseRepository diseaseRepository;

    @Autowired
    public DiseaseService(DiseaseRepository diseaseRepository) {
        this.diseaseRepository = diseaseRepository;
    }

    public Disease save(Disease disease) {
        return diseaseRepository.save(disease);
    }

    public Disease findByID(int ID) {
        Optional<Disease> optionalDisease = diseaseRepository.findById(ID);
        return optionalDisease.isPresent() ? optionalDisease.get() : null;
    }

    public List<Disease> findAll() {
        List<Disease> diseases = diseaseRepository.findAll();
        return diseases != null ? diseases : new ArrayList<>();
    }

    public void deleteByID(int ID) {
        diseaseRepository.deleteById(ID);
    }
}
