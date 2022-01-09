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
@Table(name = "disease")
public class Disease {

    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ID;

    @Column(name = "Name")
    private String name;

    @OneToOne(targetEntity = Treatment.class, cascade = CascadeType.ALL)
    @JoinColumn(name = "TreatmentID")
    private Treatment treatment;

    @OneToMany(targetEntity = Degree.class)
    @JoinColumn(name = "DiseaseID")
    private List<Degree> degrees;

    @OneToMany(targetEntity = Case.class)
    @JoinColumn(name = "DiseaseID")
    private List<Case> cases;
}
