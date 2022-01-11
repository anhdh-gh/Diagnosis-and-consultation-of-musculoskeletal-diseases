package he_thong_tu_van_benh_xuong_khop__thi_chtdttt.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name = "attributevalue")
public class AttributeValue {

    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ID;

    @Column(name = "Value")
    private String value;

    @Column(name = "ComparativeValue")
    private double comparativeValue;

    public AttributeValue(String value, double comparativeValue) {
        this.value = value;
        this.comparativeValue = comparativeValue;
    }

    public AttributeValue(String value) {
        this.value = value;
    }
}