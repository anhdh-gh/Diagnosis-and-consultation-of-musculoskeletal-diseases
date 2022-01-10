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
                <h4 class="font-weight-bold py-2 d-inline-block" style="border-bottom: 3px solid #d30000;">Chẩn đoán bệnh xương khớp</h4>
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