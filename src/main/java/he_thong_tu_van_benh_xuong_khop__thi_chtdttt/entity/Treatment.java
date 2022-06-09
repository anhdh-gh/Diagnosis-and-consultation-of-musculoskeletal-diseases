package he_thong_tu_van_benh_xuong_khop__thi_chtdttt.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Treatment implements Serializable {

    private static final long serialVersionUID = 9L;

    private int ID;
    private String method;

    public Treatment(String method) {
        this.method = method;
    }
}