package he_thong_tu_van_benh_xuong_khop__thi_chtdttt.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name = "attribute")
public class Attribute implements Serializable {

    private static final long serialVersionUID = 2L;

    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ID;

    @Column(name = "Name")
    private String name;

    @Column(name = "Weight")
    private double weight;

    @OneToMany(targetEntity = AttributeValue.class, cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "AttributeID", nullable = false)
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
