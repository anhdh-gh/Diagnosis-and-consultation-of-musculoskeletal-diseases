package he_thong_tu_van_benh_xuong_khop__thi_chtdttt.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Degree {

    private int ID;
    private String name;
    private List<Symptom> symptoms;

    public Degree(String name, List<Symptom> symptoms) {
        this.name = name;
        this.symptoms = symptoms;
    }
}
