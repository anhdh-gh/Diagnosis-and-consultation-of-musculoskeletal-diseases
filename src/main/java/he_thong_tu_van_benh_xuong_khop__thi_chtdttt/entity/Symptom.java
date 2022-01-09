package he_thong_tu_van_benh_xuong_khop__thi_chtdttt.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Inheritance(strategy = InheritanceType.JOINED)
@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name = "symptom")
public class Symptom {

    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    protected int ID;

    @Column(name = "Name")
    protected String name;

    @OneToMany(targetEntity = Value.class, cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    @JoinColumn(name = "SymptomID")
    private List<Value> values;
}