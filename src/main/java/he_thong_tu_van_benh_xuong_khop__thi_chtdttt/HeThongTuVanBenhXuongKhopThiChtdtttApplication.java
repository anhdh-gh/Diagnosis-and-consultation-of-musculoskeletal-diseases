package he_thong_tu_van_benh_xuong_khop__thi_chtdttt;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class HeThongTuVanBenhXuongKhopThiChtdtttApplication {

	public static void main(String[] args) {
		SpringApplication.run(HeThongTuVanBenhXuongKhopThiChtdtttApplication.class, args);
	}

	@Bean
	public String resourcePath() {
		return getClass().getClassLoader().getResource(".").getFile();
	}
}
