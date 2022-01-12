<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="../../includes/customer/css.jsp" />
        <title>Result</title>
    </head>
        <body>
        <!-- Begin -->
            <!-- Loader begin -->
            <jsp:include page="../../includes/common/loader.jsp"/>
            <!-- Loader end -->
            
            <!-- Header Section Begin -->
            <jsp:include page="../../includes/customer/header.jsp"/>
            <!-- Header Section End -->
            
            <!-- Breadcrumb Section Begin -->
            <jsp:include page="../../includes/customer/breadcrumb.jsp"/>
            <!-- Breadcrumb Section End -->

            <div class="container mt-5">
                <h4 class="font-weight-bold py-2 d-inline-block" style="border-bottom: 3px solid #d30000;">Kết quả</h4>

                <div class="row my-5">
                    <div class="col-12 col-lg-4 pb-3 pb-lg-0">
                        <div class="card h-100">
                            <h6 class="card-header text-danger font-weight-bold">Triệu chứng của bạn:</h6>
                            <div class="card-body">
                                <c:forEach var="attribute" items="${caseInput.attributes}" varStatus="loop">
                                    <h6 class="font-weight-bold text-primary">
                                        ${loop.index + 1}. ${attribute.name}
                                    </h6>
                                    <ul class="pl-4 ml-2 pb-3">
                                        <c:forEach var="attributeValue" items="${attribute.attributeValues}">
                                            <li>${attributeValue.value}</li>
                                        </c:forEach>
                                    </ul>
                                </c:forEach>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-lg-8">
                        <div class="card h-100">
                            <h6 class="card-header text-danger font-weight-bold">Kết quả chẩn đoán:</h6>
                            <div class="card-body">
                                <c:choose>
                                    <c:when test="${diseasesResult != null && diseasesResult.size() > 0}">
                                        <h6 class="font-weight-bold text-success mb-3">Bạn có thể bị mắc các bệnh sau:</h6>

                                        <c:forEach var="disease" items="${diseasesResult}" varStatus="loop">
                                            <p class="font-weight-bold mb-1">${loop.index + 1}. ${disease.name}</p>
                                            <ul class="pl-4 ml-2 pb-3">
                                                <c:if test="${disease.degrees != null && disease.degrees.size() > 0}">
                                                    <li>Mức độ bệnh: ${disease.degrees[0].name}</li>
                                                </c:if>
                                                <li>Hướng dẫn điều trị: <a href="${disease.treatment.method}" target="_blank">Xem chi tiết</a></li>
                                            </ul>
                                        </c:forEach>
                                    </c:when>

                                    <c:otherwise>
                                        <h6 class="font-weight-bold text-success mb-3">Hệ thống không chẩn đoán được bệnh</h6>
                                        <p>
                                            Nguyên nhân có thể là:
                                            <br/>1. Triệu chứng quá ít: <a href="/customer">Chọn lại các triệu chứng</a>
                                            <br/>2. Hệ thống không thể chẩn đoán: <a href="/contact">Liên hệ với chúng tôi</a>
                                        </p>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Footer Section Begin -->
            <jsp:include page="../../includes/customer/footer.jsp"/>
            <!-- Footer Section End -->
        <!-- End -->
        <jsp:include page="../../includes/customer/js.jsp" />
        
        <script>
            $("#home-page").addClass('active');
            $("#page-title").text('Result');

            $("#sub-title").text('Kết quả chẩn đoán bệnh!');
        </script>
    </body>
</html>