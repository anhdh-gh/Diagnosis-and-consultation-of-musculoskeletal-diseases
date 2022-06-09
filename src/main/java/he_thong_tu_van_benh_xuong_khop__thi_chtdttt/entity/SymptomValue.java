package he_thong_tu_van_benh_xuong_khop__thi_chtdttt.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@NoArgsConstructor
@AllArgsConstructor
@Data
public class SymptomValue {

    private int ID;
    private String value;

    public SymptomValue(String value) {
        this.value = value;
    }
}