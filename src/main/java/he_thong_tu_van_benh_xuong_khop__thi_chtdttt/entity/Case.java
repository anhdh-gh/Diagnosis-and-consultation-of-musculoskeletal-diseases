package he_thong_tu_van_benh_xuong_khop__thi_chtdttt.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Case {

    private int ID;
    private List<Attribute> attributes;

    public Case(List<Attribute> attributes) {
        this.attributes = attributes;
    }
}
