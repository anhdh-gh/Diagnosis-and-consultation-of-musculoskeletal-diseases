package he_thong_tu_van_benh_xuong_khop__thi_chtdttt;

import com.github.fabiomaffioletti.firebase.EnableFirebaseRepositories;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication
@EnableFirebaseRepositories
public class HeThongTuVanBenhXuongKhopThiChtdtttApplication {

	@Bean
	public RestTemplate restTemplate() {
		return new RestTemplate();
	}

	public static void main(String[] args) {
		SpringApplication.run(HeThongTuVanBenhXuongKhopThiChtdtttApplication.class, args);
	}
}
