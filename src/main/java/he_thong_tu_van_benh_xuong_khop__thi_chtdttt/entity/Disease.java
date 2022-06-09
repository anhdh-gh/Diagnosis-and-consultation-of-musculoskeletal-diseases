package he_thong_tu_van_benh_xuong_khop__thi_chtdttt.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Disease implements Serializable {

    private static final long serialVersionUID = 6L;

    private int ID;
    private String name;
    private Case _case;
    private Treatment treatment;
    private List<Degree> degrees;

    public Disease(String name, Treatment treatment, List<Degree> degrees, Case _case) {
        this.name = name;
        this.treatment = treatment;
        this.degrees = degrees;
        this._case = _case;
    }
}
