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

                <div class="border border-gray my-5 p-5">
                    <h4 class="text-center font-weight-bold py-5 text-danger">Điền đầy đủ thông tin</h4>

                    <form method="post">
                        <c:forEach var="attributeDTO" items="${attributeDTOs}" varStatus="loop">
                            <h5 class="text-primary font-weight-bold">${loop.index + 1}. ${attributeDTO.name}</h5>
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
                        </c:forEach>

                        <button type="submit" class="btn btn-success font-weight-bold w-100">Submit</button>
                    </form>
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
        </script>
    </body>
</html>