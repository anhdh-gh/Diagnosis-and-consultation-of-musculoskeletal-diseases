package he_thong_tu_van_benh_xuong_khop__thi_chtdttt.service;

import he_thong_tu_van_benh_xuong_khop__thi_chtdttt.dto.AttributeDTO;
import he_thong_tu_van_benh_xuong_khop__thi_chtdttt.entity.Attribute;
import he_thong_tu_van_benh_xuong_khop__thi_chtdttt.entity.Disease;
import he_thong_tu_van_benh_xuong_khop__thi_chtdttt.repository.DiseaseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.atomic.AtomicReference;
import java.util.stream.Collectors;

@Service
public class DiseaseService {

    private DiseaseRepository diseaseRepository;

    @Autowired
    public DiseaseService(DiseaseRepository diseaseRepository) {
        this.diseaseRepository = diseaseRepository;
    }

    public Disease save(Disease disease) {
        return diseaseRepository.save(disease);
    }

    public Disease findByID(int ID) {
        Optional<Disease> optionalDisease = diseaseRepository.findById(ID);
        return optionalDisease.isPresent() ? optionalDisease.get() : null;
    }

    public List<Disease> findAll() {
        List<Disease> diseases = diseaseRepository.findAll();
        return diseases != null ? diseases : new ArrayList<>();
    }

    public void deleteByID(int ID) {
        diseaseRepository.deleteById(ID);
    }

    private double calculateWeight(String nameAttribute) {
        // Lấy ra tất cả các attributes
        List<Attribute> attributes = getAllAttributes();

        // Tính
        double sum = 0;
        double quantity = 0;

        for(Attribute attribute: attributes) {
            if(attribute.getName().equals(nameAttribute)) {
                sum +=  attribute.getWeight();
                quantity++;
            }
        }

        return sum/quantity;
    }

    private List<Attribute> getAllAttributes() {
        List<Disease> diseases = diseaseRepository.findAll();
        if(diseases == null) diseases = new ArrayList<>();

        // Lấy ra tất cả các attributes
        List<Attribute> attributes = new ArrayList<>();
        diseases.stream()
                .map(disease -> disease.get_case().getAttributes())
                .forEach(attributeList -> {
                    attributeList.stream().forEach(attribute -> {
                        attributes.add(attribute);
                    });
                });

        return attributes;
    }

    public List<AttributeDTO> getAllAttributeDTO() {
        // Lấy ra tất cả các attributes
        List<Attribute> attributes = getAllAttributes();

        // Thực hiện lọc giá trị
        List<AttributeDTO> attributeDTOs = new ArrayList<>();
        attributes.stream().forEach(attribute -> {

            AttributeDTO attributeDTO = null;
            for(AttributeDTO attributeDTOi: attributeDTOs)
                if(attributeDTOi.getName().equals(attribute.getName()))
                    attributeDTO = attributeDTOi;

            if(attributeDTO != null) {
                attributeDTO.setQuantityDisease(attributeDTO.getQuantityDisease() + 1);

                for(String value: attribute.getAttributeValues().stream().map(attributeValue -> attributeValue.getValue()).collect(Collectors.toList())) {
                    if(attributeDTO.getValues().stream().allMatch(valuei -> !valuei.equals(value)))
                        attributeDTO.getValues().add(value);
                }
            }
            else {
                attributeDTO = new AttributeDTO();
                attributeDTO.setName(attribute.getName());
                attributeDTO.setValues(attribute.getAttributeValues().stream().map(attributeValue -> attributeValue.getValue()).collect(Collectors.toList()));
                attributeDTO.setQuantityDisease(1);
                attributeDTO.setWeight(calculateWeight(attribute.getName()));
                attributeDTOs.add(attributeDTO);
            }
        });

        return attributeDTOs;
    }
}
