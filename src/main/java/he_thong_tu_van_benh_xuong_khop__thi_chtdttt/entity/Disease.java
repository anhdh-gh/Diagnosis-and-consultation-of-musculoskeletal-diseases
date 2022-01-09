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

    @OneToOne(targetEntity = Case.class, cascade = CascadeType.ALL)
    @JoinColumn(name = "CaseID")
    private Case cases;

    @OneToOne(targetEntity = Treatment.class, cascade = CascadeType.ALL)
    @JoinColumn(name = "TreatmentID")
    private Treatment treatment;

    @OneToMany(targetEntity = Degree.class, cascade = CascadeType.ALL)
    @JoinColumn(name = "DiseaseID", nullable = false)
    private List<Degree> degrees;

    public Disease(String name, Treatment treatment, List<Degree> degrees, Case cases) {
        this.name = name;
        this.treatment = treatment;
        this.degrees = degrees;
        this.cases = cases;
    }
}
