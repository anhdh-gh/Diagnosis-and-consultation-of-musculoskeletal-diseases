<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
<head>
    <jsp:include page="../../includes/manager/css.jsp" />

    <c:if test="${disease != null}">
        <title>Read disease</title>
    </c:if>

    <c:if test="${disease == null}">
        <title>Add disease</title>
    </c:if>

    <style>
        #form-disease label.error {
            color: red;
            margin: 0;
            text-transform: none;
        }
    </style>
</head>
<body>
    <!-- Loader begin -->
    <jsp:include page="../../includes/common/loader.jsp"/>
    <!-- Loader end -->

    <div class="main-wrapper">
        <!-- Header Section Begin -->
        <jsp:include page="../../includes/manager/header.jsp"/>
        <!-- Header Section End -->

        <!-- Side bar Begin -->
        <jsp:include page="../../includes/manager/sidebar.jsp"/>
        <!-- Side bar End -->

        <div class="page-wrapper">
            <form class="content container-fluid" method="POST" id="form-disease">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Disease <label id="disease-error" class="error" for="disease"></label></h4>
                            </div>
                            <div class="card-body">
                                <c:if test="${disease == null}">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="quantity_attribute">Số lượng thuộc tính:</label>
                                                <div class="input-group">
                                                    <input id="quantity_attribute" name="quantity_attribute" type="text" class="form-control" placeholder="Nhập số lượng thuộc tính theo format">
                                                    <div class="input-group-prepend">
                                                        <button class="btn btn-outline-success" type="button" id="button-addon1" onclick="generateAttributeJson()">
                                                            <i class="fas fa-arrow-alt-circle-right"></i>
                                                        </button>
                                                    </div>
                                                </div>

                                                <p class="font-italic">
                                                    Format: Số thuộc tính của case>Số giá trị của thuộc tính 1, Số giá trị của thuộc tính 2, ... Ví dụ: 6>1,1,1,1,1,1
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="quantity_degree">Số lượng mức độ:</label>
                                                <div class="input-group">
                                                    <input id="quantity_degree" name="quantity_degree" type="text" class="form-control" placeholder="Nhập số lượng mức độ theo format">
                                                    <div class="input-group-prepend">
                                                        <button class="btn btn-outline-success" type="button" id="button-addon2" onclick="generateDegreeJson()">
                                                            <i class="fas fa-arrow-alt-circle-right"></i>
                                                        </button>
                                                    </div>
                                                </div>

                                                <p class="font-italic">
                                                    Format: Số mức độ>Số triệu chứng của mức độ 1, Số triệu chứng của mức độ 2, ...>Số giá trị của triệu chứng 1, Số giá trị của triệu chứng 2, ... Ví dụ: 3>0,1,1>0,1,1
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </c:if>


                                <div class="row">
                                    <div class="col-md-12">
                                        <textarea id="disease" name="disease" class="form-control" rows="20">${disease}</textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row mb-2">
                    <div class="col-12">
                        <button id="bt-submit" type="submit" class="btn btn-primary font-weight-bold w-100">Submit</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <!-- Js -->
    <jsp:include page="../../includes/manager/js.jsp" />
    <script>
        const generateAttributeJson = () => {
            const value = $('#quantity_attribute').val();
            const obj = JSON.parse($('#disease').text());

            const arr = value.split(">");
            if(arr.length != 2) return;

            let [ quantityAttribute, arrValueAttribute ] = arr;
            arrValueAttribute = arrValueAttribute.split(",")
            if(arrValueAttribute.length != quantityAttribute) return;

            for(let i = 1 ; i <= quantityAttribute; i++) {
                const attribute = {
                    name: `Tên thuộc tính ` + i,
                    weight: 0,
                    attributeValues: []
                }

                for(let j = 1 ; j <= arrValueAttribute[i-1]; j++) {
                    attribute.attributeValues.push({
                        value: "GIá trị thuộc tính " + j,
                        comparativeValue: 0
                    });
                }

                obj._case.attributes.push(attribute);
            }

            $('#disease').text(JSON.stringify(obj, null, 4));
        }

        const generateDegreeJson = () => {
            const value = $('#quantity_degree').val();
            const arr = value.split(">");
            const obj = JSON.parse($('#disease').text());

            if(arr.length != 3) return;

            let [ quantityDegree, arrQuantitySymptom, arrValue ] = arr
            arrQuantitySymptom = arrQuantitySymptom.split(",");
            arrValue = arrValue.split(",");

            if(arrQuantitySymptom.length != quantityDegree || arrQuantitySymptom.length != arrValue.length) return;

            for(let i = 1; i <= quantityDegree; i++) {
                const degree = {
                    name: "Mức độ bệnh " + i,
                    symptoms: []
                }

                for(let j = 1; j <= arrQuantitySymptom[i-1]; j++) {
                    const symptom = {
                        name: "Triệu chứng " + j,
                        symptomValues: []
                    }

                    for(let k = 1; k <= arrValue[i-1]; k++) {
                        symptom.symptomValues.push({
                            value: "Giá trị triệu chứng " + k,
                        })
                    }

                    degree.symptoms.push(symptom);
                }

                obj.degrees.push(degree);
            }

            $('#disease').text(JSON.stringify(obj, null, 4));
        }

        $(document).ready(() => {
            $('#sidebar-diseases').addClass("active");

            <c:if test="${disease != null}">
                $('#page-name').text('Read disease');
                $('#disease').text(JSON.stringify(JSON.parse($('#disease').text()), null, 4))
                $('#disease').attr("readOnly", true);
                $('#bt-submit').attr("disabled", true);
            </c:if>

            <c:if test="${disease == null}">
                $('#page-name').text('Add disease');
                $('#disease').text(JSON.stringify({
                    name : "Tên bệnh",
                    _case: {
                        attributes: []
                    },
                    treatment: {
                        method : "Phương pháp điều trị"
                    },
                    degrees: []
                }, null, 4))
            </c:if>

            // Validate
            $('#form-disease').validate({
                rules: {
                    "disease": {
                        notBlank: true,
                        checkJson: true
                    }
                },

                messages: {
                    "disease": {
                        notBlank: "không được để trống",
                        checkJson: "không đúng định dạng json"
                    }
                }
            });
        });
    </script>
</body>
</html>