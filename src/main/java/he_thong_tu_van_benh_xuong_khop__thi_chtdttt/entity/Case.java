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
@Table(name = "`case`")
public class Case {

    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ID;

    @OneToMany(targetEntity = Attribute.class, cascade = CascadeType.ALL)
    @JoinColumn(name = "CaseID")
    private List<Attribute> attributes;
}
