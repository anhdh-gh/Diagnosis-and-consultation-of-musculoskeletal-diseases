package he_thong_tu_van_benh_xuong_khop__thi_chtdttt.repository;

import he_thong_tu_van_benh_xuong_khop__thi_chtdttt.entity.Disease;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DiseaseRepository extends JpaRepository<Disease, Integer> {
}