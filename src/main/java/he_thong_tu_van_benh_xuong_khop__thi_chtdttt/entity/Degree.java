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
@Table(name = "degree")
public class Degree {

    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ID;

    @Column(name = "Name")
    private String name;

    @OneToMany(targetEntity = Symptom.class, cascade = CascadeType.ALL)
    @JoinColumn(name = "DegreeID", nullable = false)
    private List<Symptom> symptoms;

    public Degree(String name, List<Symptom> symptoms) {
        this.name = name;
        this.symptoms = symptoms;
    }
}
