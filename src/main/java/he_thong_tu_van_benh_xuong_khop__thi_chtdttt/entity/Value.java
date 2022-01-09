package he_thong_tu_van_benh_xuong_khop__thi_chtdttt.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Inheritance(strategy = InheritanceType.JOINED)
@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name = "value")
public class Value {

    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    protected int ID;

    @Column(name = "Value")
    protected String value;
}