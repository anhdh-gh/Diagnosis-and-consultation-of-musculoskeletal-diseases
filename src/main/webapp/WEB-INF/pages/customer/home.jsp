<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="../../includes/customer/css.jsp" />
        <title>Home</title>
    </head>
        <body>
        <!-- Begin -->
            <!-- Loader begin -->
            <jsp:include page="../../includes/common/loader.jsp"/>
            <!-- Loader end -->
            
            <!-- Header Section Begin -->
            <jsp:include page="../../includes/customer/header.jsp"/>
            <!-- Header Section End -->

            <div class="container mt-5">
                <h4 class="font-weight-bolder py-2 d-inline-block" style="border-bottom: 3px solid #d30000;">Chẩn đoán bệnh xương khớp</h4>

                <div class="card my-5">
                    <div class="card-header">
                        <h4 class="text-center font-weight-bold text-danger">Khai báo thông tin</h4>
                    </div>
                    <div class="card-body overflow-auto">
                        <form method="post" id="formInput">

                            <c:if test="${sessionScope.diseasesResult == null}">
                                <label for="ngay_sinh" class="text-primary font-weight-bold">1. Ngày sinh</label>
                                <div class="row mb-3">
                                    <div class="col-12">
                                        <input min="1900-01-01" id="ngay_sinh" name="Độ tuổi" type="date" class="form-control">
                                    </div>
                                </div>
                            </c:if>

                            <c:forEach var="attributeDTO" items="${attributeDTOs}" varStatus="loop">
                                <c:choose>
                                    <c:when test="${attributeDTO.name == 'Độ tuổi'}"></c:when>

                                    <c:otherwise>
                                        <h5 class="text-primary font-weight-bold">${sessionScope.diseasesResult == null ? loop.index + 2 : loop.index + 1}. ${attributeDTO.name}</h5>
                                        <div class="row mb-3">
                                            <c:forEach var="value" items="${attributeDTO.values}">
                                                <div class="col-md-6 col-lg-6 col-xl-4 py-2">
                                                    <div class="pretty p-icon p-round p-tada p-bigger">
                                                        <input type="checkbox" name="${attributeDTO.name}" value="${value}"/>
                                                        <div class="state p-success-o">
                                                            <i class="icon fas fa-check-circle"></i>
                                                            <label>${value}</label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                        </form>
                    </div>

                    <div class="card-footer">
                        <button type="submit" form="formInput" class="btn btn-success font-weight-bold w-100">Submit</button>
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
            $(".hero").removeClass("hero-normal");
            $(".hero__banner").removeClass('d-none');
            
            $(".hero__categories__all").on("click", function () {
                $(".hero__categories ul").stop();
            });


            var today = new Date();
            var dd = today.getDate();
            var mm = today.getMonth() + 1; //January is 0!
            var yyyy = today.getFullYear();

            if (dd < 10) {
                dd = '0' + dd;
            }

            if (mm < 10) {
                mm = '0' + mm;
            }

            today = yyyy + '-' + mm + '-' + dd;
            $('#ngay_sinh').attr("max", today)
        </script>
    </body>
</html>