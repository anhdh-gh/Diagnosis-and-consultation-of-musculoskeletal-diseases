package he_thong_tu_van_benh_xuong_khop__thi_chtdttt.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name = "attribute")
public class Attribute extends Symptom {

    @Column(name = "Weight")
    private double weight;

    @OneToMany(targetEntity = AttributeValue.class, cascade = CascadeType.ALL)
    @JoinColumn(name = "AttributeID")
    private List<AttributeValue> attributeValues;
}
