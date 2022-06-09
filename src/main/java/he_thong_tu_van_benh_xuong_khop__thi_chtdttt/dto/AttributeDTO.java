package he_thong_tu_van_benh_xuong_khop__thi_chtdttt.dto;

import he_thong_tu_van_benh_xuong_khop__thi_chtdttt.entity.Disease;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AttributeDTO implements Serializable {
    private static final long serialVersionUID = 1L;
    private String name;
    private double weight;
    private List<String> values;
    private List<Disease> diseases;

    public AttributeDTO(String name, List<String> values) {
        this.name = name;
        this.values = values;
    }
}
