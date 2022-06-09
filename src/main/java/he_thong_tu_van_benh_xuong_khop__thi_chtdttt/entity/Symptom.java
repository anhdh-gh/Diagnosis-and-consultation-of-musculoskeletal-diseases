package he_thong_tu_van_benh_xuong_khop__thi_chtdttt.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Symptom {

    private int ID;
    private String name;
    private List<SymptomValue> symptomValues;

    public Symptom(String name, List<SymptomValue> symptomValues) {
        this.name = name;
        this.symptomValues = symptomValues;
    }
}