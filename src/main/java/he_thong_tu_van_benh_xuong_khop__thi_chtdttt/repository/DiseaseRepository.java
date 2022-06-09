package he_thong_tu_van_benh_xuong_khop__thi_chtdttt.repository;

import he_thong_tu_van_benh_xuong_khop__thi_chtdttt.entity.Disease;
import he_thong_tu_van_benh_xuong_khop__thi_chtdttt.utils.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public class DiseaseRepository {

    private List<Disease> diseases;
    private String resourcePath;

    @Autowired
    public DiseaseRepository(String resourcePath) {
        this.resourcePath = resourcePath;
        diseases = (List<Disease>) FileUtils.readObject(resourcePath + "/diseases.dat");
    }

    public List<Disease> findAll() {
        return diseases;
    }

    public Optional<Disease> findById(int id) {
        for(Disease disease: diseases) {
            if(disease.getID() == id) {
                return Optional.of(disease);
            }
        }

        return Optional.ofNullable(null);
    }

    public Disease save(Disease disease) {
        return disease;
    }

    public void deleteById(int id) {

    }
}