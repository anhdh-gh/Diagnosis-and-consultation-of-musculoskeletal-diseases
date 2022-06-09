package he_thong_tu_van_benh_xuong_khop__thi_chtdttt.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@NoArgsConstructor
@AllArgsConstructor
@Data
public class AttributeValue {

    private int ID;
    private String value;
    private double comparativeValue;

    public AttributeValue(String value, double comparativeValue) {
        this.value = value;
        this.comparativeValue = comparativeValue;
    }

    public AttributeValue(String value) {
        this.value = value;
    }
}