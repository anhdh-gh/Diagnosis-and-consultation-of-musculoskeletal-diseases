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
@Table(name = "symptom")
public class Symptom {

    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ID;

    @Column(name = "Name")
    private String name;

    @OneToMany(targetEntity = SymptomValue.class, cascade = CascadeType.ALL)
    @JoinColumn(name = "SymptomID", nullable = false)
    private List<SymptomValue> symptomValues;

    public Symptom(String name, List<SymptomValue> symptomValues) {
        this.name = name;
        this.symptomValues = symptomValues;
    }
}