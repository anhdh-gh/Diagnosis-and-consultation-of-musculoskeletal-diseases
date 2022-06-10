<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!-- Header Section Begin -->
<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__left">
                        <ul>
                            <li><i class="fa fa-envelope"></i> dohunganh@gmail.com</li>
                            <li>Welcome to health diagnostic system</li>
                        </ul>
                    </div>
                </div>
                
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__right">
                        <div class="header__top__right__social">
                            <a target="_blank" href="https://www.facebook.com/anhdh.fb"><i class="fa-brands fa-facebook-f text-primary"></i></a>
                            <a target="_blank" href="mailto:dohunganh27092000@gmail.com"><i class="far fa-envelope text-danger"></i></a>
                            <a target="_blank" href="https://github.com/anhdh-gh"><i class="fab fa-github text-dark"></i></a>
                            <a target="_blank" href="https://www.youtube.com/channel/UCuZUp0A9aLrfHSPr3eg05Ow"><i class="fab fa-youtube text-danger"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="container">
        <div class="row">
            
            <div class="col-lg-2">
                <div class="header__logo">
                    <a href="<c:url value='${request.contextPath}/customer'/>" class="d-lg-flex d-none justify-content-center">
                        <img style="width: 50%" src="<c:url value='${request.contextPath}/img/customer/logo.png'/>" alt="">
                    </a>
                    <h6 class="mt-1 text-center">SỐNG KHỎE</h6>
                </div>
            </div>
            
            <div class="col-lg-7 d-flex justify-content-center">
                <nav class="header__menu d-flex align-items-center flex-grow-1">
                    <ul class="d-flex flex-wrap justify-content-around flex-grow-1">
                        <li id="home-page" class="m-0"><a href="<c:url value='${request.contextPath}/customer'/>">Home</a></li>
                        <li id="contact-page" class="m-0"><a href="<c:url value='${request.contextPath}/customer/contact'/>">Contact</a></li>
                        <li id="manual-page" class="m-0"><a href="<c:url value='${request.contextPath}/customer/manual'/>">Manual</a></li>
                        <li class="m-0"><a href="<c:url value='${request.contextPath}/manager'/>">Manager</a></li>
                    </ul>
                </nav>
            </div>

            <div class="col-lg-3 d-lg-flex d-none align-items-center justify-content-center">
                <div class="hero__search__phone">
                    <div class="hero__search__phone__icon">
                        <i class="fa fa-phone"></i>
                    </div>
                    <div class="hero__search__phone__text">
                        <h5>+84962507172</h5>
                        <span>Hỗ trợ 24/7</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- Banner Begin -->
<div class="p-5" style="background-color: #F3F7F9;border-top: 3px solid #d30000;">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <img src="${request.contextPath}/img/customer/banner.png" alt="">
            </div>
        </div>

        <div class="row mt-5">
            <div class="col-12">
                <div style="background: url(https://portal.ptit.edu.vn/wp-content/uploads/2015/12/home_blogger2_sep.png) no-repeat left top;height: 3px;"></div>
            </div>
        </div>
    </div>
</div>
<!-- Banner End -->
<!-- Header Section End -->