<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="../../includes/customer/css.jsp" />
        <title>Contact</title>
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
            
            <!-- Contact Section Begin -->
            <section class="contact spad">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                            <div class="contact__widget">
                                <span class="fas fa-phone"></span>
                                <h4>Phone</h4>
                                <p>+84962507172</p>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                            <div class="contact__widget">
                                <span class="fas fa-map-marker-alt"></span>
                                <h4>Address</h4>
                                <p>30 Trần Phú, P. Mộ Lao, Hà Đông, Hà Nội</p>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                            <div class="contact__widget">
                                <span class="far fa-clock"></span>
                                <h4>Open time</h4>
                                <p>10:00 am to 23:00 pm</p>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                            <div class="contact__widget">
                                <span class="far fa-envelope"></span>
                                <h4>Email</h4>
                                <p>dohunganh@gmail.com</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Contact Section End -->
            
            <!-- Map Begin -->
            <div class="map">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.3025489946735!2d105.78573631488256!3d20.980505986024514!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135accdd8a1ad71%3A0xa2f9b16036648187!2zSOG7jWMgdmnhu4duIEPDtG5nIG5naOG7hyBCxrB1IGNow61uaCB2aeG7hW4gdGjDtG5n!5e0!3m2!1sen!2s!4v1640490524320!5m2!1sen!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                <div class="map-inside">
                    <i class="icon_pin"></i>
                    <div class="inside-widget">
                        <h4>Hà Nội</h4>
                        <ul>
                            <li>Phone: +84962507172</li>
                            <li>Address: 30 Trần Phú, P. Mộ Lao, Hà Đông, Hà Nội</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- Map End -->
            
            <!-- Footer Section Begin -->
            <jsp:include page="../../includes/customer/footer.jsp"/>
            <!-- Footer Section End -->
        <!-- End -->
        <jsp:include page="../../includes/customer/js.jsp" />
        
        <script>
            $("#contact-page").addClass('active');
            $("#page-title").text('Contact us');
        </script>
    </body>
</html>