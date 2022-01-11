package he_thong_tu_van_benh_xuong_khop__thi_chtdttt.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AttributeDTO {
    private String name;
    private double weight;
    private List<String> values;
    private int quantityDisease;
}
