package he_thong_tu_van_benh_xuong_khop__thi_chtdttt.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class SymptomValue implements Serializable {

    private static final long serialVersionUID = 8L;
    private int ID;

    private String value;

    public SymptomValue(String value) {
        this.value = value;
    }
}