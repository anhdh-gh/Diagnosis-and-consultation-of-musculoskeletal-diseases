package he_thong_tu_van_benh_xuong_khop__thi_chtdttt.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Degree implements Serializable {

    private static final long serialVersionUID = 5L;

    private int ID;
    private String name;
    private List<Symptom> symptoms;

    public Degree(String name, List<Symptom> symptoms) {
        this.name = name;
        this.symptoms = symptoms;
    }
}
