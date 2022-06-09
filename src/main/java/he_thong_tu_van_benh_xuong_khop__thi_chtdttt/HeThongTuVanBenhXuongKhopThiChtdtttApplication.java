package he_thong_tu_van_benh_xuong_khop__thi_chtdttt;

import com.github.fabiomaffioletti.firebase.EnableFirebaseRepositories;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.web.client.RestTemplate;

import java.nio.charset.Charset;

@SpringBootApplication
@EnableFirebaseRepositories
public class HeThongTuVanBenhXuongKhopThiChtdtttApplication {

	@Bean
	public RestTemplate restTemplate() {
		RestTemplate template = new RestTemplate();
		template.getMessageConverters()
				.add(0, new StringHttpMessageConverter(Charset.forName("UTF-8")));
		return template;
	}

	public static void main(String[] args) {
		SpringApplication.run(HeThongTuVanBenhXuongKhopThiChtdtttApplication.class, args);
	}
}
