package he_thong_tu_van_benh_xuong_khop__thi_chtdttt.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Attribute {

    private int ID;
    private String name;
    private double weight;
    private List<AttributeValue> attributeValues;

    public Attribute(String name, double weight, List<AttributeValue> attributeValues) {
        this.name = name;
        this.weight = weight;
        this.attributeValues = attributeValues;
    }

    public Attribute(String name, List<AttributeValue> attributeValues) {
        this.name = name;
        this.attributeValues = attributeValues;
    }
}
