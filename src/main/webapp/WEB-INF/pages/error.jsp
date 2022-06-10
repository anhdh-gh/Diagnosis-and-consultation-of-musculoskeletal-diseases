<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage = "true" %>
<html>
<head>
    <title>Error</title>
    <%@ include file="../includes/common/header.jsp" %>

    <style>
        @import url("https://fonts.googleapis.com/css?family=Merriweather");
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        .error-container {
            margin: 0;
            padding: 0;
            display: flex;
            min-height: 100vh;
            justify-content: flex-start;
            align-items: center;
            flex-direction: column;
            background-color: black;
            font-family: "Merriweather", serif;
            padding: 1rem;
        }
        .error-container .title {
            color: #fff;
            font-size: 130px;
            margin-top: 40px;
        }
        .error-container p {
            font-size: 22px;
            color: #fff;
        }
        .error-container a {
            margin-top: 10px;
            padding: 10px 30px;
            border: 0px;
            background: #880000;
            color: #fff;
            font-size: 18px;
            letter-spacing: 2px;
            outline: none;
            cursor: pointer;
            border-radius: 10px;
            transition: 0.3s all;
            font-family: "Merriweather", serif;
            text-decoration: none;
            font-weight: bold;
        }
        .error-container a:hover {
            background: #660000;
            text-decoration: none;
        }
        .error-container a:active {
            transform: translate(-5px, 5px);
        }
    </style>
</head>
<body>
<!-- Begin -->
<!-- Loader begin -->
<jsp:include page="../includes/common/loader.jsp"/>
<!-- Loader end -->
<div class="error-container">
    <div class="title">${status}!</div>
    <p>${error}</p>

    <a href="/">Go Home</a>

    <div class="table-responsive mt-5" style="max-width: 100%">
        <table class="table table-dark">
            <tbody>
            <c:if test="${message != null}">
                <tr>
                    <td class="font-weight-bold text-nowrap">Message:</td>
                    <td>${message}</td>
                </tr>
            </c:if>

            <c:if test="${exception != null}">
                <tr>
                    <td class="font-weight-bold text-nowrap">Exception:</td>
                    <td>${exception}</td>
                </tr>
            </c:if>

            <c:if test="${trace != null}">
                <tr class="text-white">
                    <td class="font-weight-bold">Stack trace:</td>
                    <td>${trace}</td>
                </tr>
            </c:if>
            </tbody>
        </table>
    </div>
</div>

<%@ include file="../includes/common/footer.jsp" %>
<!-- End -->
</body>
</html>