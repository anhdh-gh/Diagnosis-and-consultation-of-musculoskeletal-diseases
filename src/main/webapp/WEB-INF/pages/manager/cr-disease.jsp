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
                $('#disease').text(JSON.stringify(JSON.parse(`{
                    "name" : "Tên bệnh",
                        "_case" : {
                        "attributes" : [ {
                            "name" : "Tên thuộc tính",
                            "weight" : 0,
                            "attributeValues" : [ {
                                "value" : "GIá trị thuộc tính",
                                "comparativeValue" : 0
                            } ]
                        } ]
                    },
                    "treatment" : {
                        "method" : "Phương pháp điều trị"
                    },
                    "degrees" : [ {
                        "name" : "Mức độ bệnh",
                        "symptoms" : [ {
                            "name" : "Triệu chứng",
                            "symptomValues" : [ {
                                "value" : "Giá trị triệu chứng"
                            } ]
                        } ]
                    } ]
                }`), null, 4));
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