package he_thong_tu_van_benh_xuong_khop__thi_chtdttt;

import he_thong_tu_van_benh_xuong_khop__thi_chtdttt.entity.*;
import he_thong_tu_van_benh_xuong_khop__thi_chtdttt.repository.DiseaseRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.ArrayList;
import java.util.Arrays;

@SpringBootTest
class HeThongTuVanBenhXuongKhopThiChtdtttApplicationTests {

	private DiseaseRepository diseaseRepository;

	@Autowired
	public HeThongTuVanBenhXuongKhopThiChtdtttApplicationTests(DiseaseRepository diseaseRepository) {
		this.diseaseRepository = diseaseRepository;
	}

	@Test
	void contextLoads() {
		Disease disease = new Disease(
			"Bệnh 1",
			new Treatment("Treatment 1"),
			Arrays.asList(
				new Degree(
					"Degree 1",
					Arrays.asList(new Symptom(
						"Symptom name 1",
						Arrays.asList(new SymptomValue("Value 1"))
					))
				)
			),
			new Case(
				Arrays.asList(new Attribute(
					"Attribute 1",
					40,
					Arrays.asList(new AttributeValue(
						"AttributeValue 1",
						50
					))
				))
			)
		);

		diseaseRepository.save(disease);
	}
}
