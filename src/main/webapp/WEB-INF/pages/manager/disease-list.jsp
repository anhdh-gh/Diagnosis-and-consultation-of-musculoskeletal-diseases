<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
<head>
    <jsp:include page="../../includes/manager/css.jsp" />
    <title>Diseases</title>
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
            <div class="content container-fluid">

                <div class="row">
                    <div class="col-sm-4 col-12"></div>
                    <div class="col-sm-8 col-12 text-right add-btn-col">
                        <a href="/manager/disease/add" class="btn btn-primary float-right btn-rounded">
                            <i class="fas fa-plus"></i> Add disease
                        </a>
                    </div>
                </div>

                <div class="content-page">
                    <div class="row">
                        <div class="col-md-12 mb-3">
                            <div class="table-responsive">
                                <table class="table custom-table datatable">
                                    <thead class="thead-light">
                                        <tr>
                                            <th>Name</th>
                                            <th>Attribute case</th>
                                            <th>Quantity attribute</th>
                                            <th>Sum attribute</th>
                                            <th>Degree</th>
                                            <th>Treatment</th>
                                            <th class="text-right">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="disease" items="${diseases}">
                                            <tr>
                                                <td>${disease.name}</td>
                                                <td>
                                                    <div class="dropdown">
                                                        <c:if test="${disease._case.attributes.size() == 1}">
                                                            <span role="button"
                                                                  class="btn btn-white btn-sm btn-rounded"
                                                            >${disease._case.attributes[0].name} - ${disease._case.attributes[0].weight}
                                                            </span>
                                                        </c:if>

                                                        <c:if test="${disease._case.attributes.size() > 1}">
                                                            <span role="button"
                                                                  class="btn btn-white btn-sm btn-rounded dropdown-toggle"
                                                                  data-toggle="dropdown" aria-expanded="false">${disease._case.attributes[0].name} - ${disease._case.attributes[0].weight}
                                                            </span>
                                                            <div class="dropdown-menu">
                                                                <c:set var="total" value="${0}"/>
                                                                <c:forEach var="attribute" items="${disease._case.attributes}">
                                                                    <c:set var="total" value="${total + attribute.weight}" />
                                                                    <span style="cursor: pointer" class="dropdown-item">${attribute.name} - ${attribute.weight}</span>
                                                                </c:forEach>
                                                            </div>
                                                        </c:if>
                                                    </div>
                                                </td>

                                                <td>${disease._case.attributes.size()}</td>

                                                <td>${total}</td>

                                                <td>
                                                    <div class="dropdown">
                                                        <c:if test="${disease.degrees.size() == 1}">
                                                            <span role="button"
                                                                  class="btn btn-white btn-sm btn-rounded"
                                                            >${disease.degrees[0].name}
                                                            </span>
                                                        </c:if>

                                                        <c:if test="${disease.degrees.size() > 1}">
                                                            <span role="button"
                                                                  class="btn btn-white btn-sm btn-rounded dropdown-toggle"
                                                                  data-toggle="dropdown" aria-expanded="false">${disease.degrees[0].name}
                                                            </span>
                                                            <div class="dropdown-menu">
                                                                <c:forEach var="degree" items="${disease.degrees}">
                                                                    <span style="cursor: pointer" class="dropdown-item">${degree.name}</span>
                                                                </c:forEach>
                                                            </div>
                                                        </c:if>
                                                    </div>
                                                </td>
                                                <td>
                                                    <a href="${disease.treatment.method}" target="_blank">
                                                        Phương pháp điều trị
                                                    </a>
                                                </td>

                                                <td class="text-right">
                                                    <a href="/manager/disease/read/${disease.ID}" class="btn btn-primary btn-sm mb-1">
                                                        <i class="far fa-edit"></i>
                                                    </a>
                                                    <button type="submit" data-toggle="modal" data-target="#delete_employee"
                                                            class="btn btn-danger btn-sm mb-1" onclick="removeDiseaseByID(`${disease.ID}`)">
                                                        <i class="far fa-trash-alt"></i>
                                                    </button>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="delete_employee" class="modal" role="dialog">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content modal-md">
                    <div class="modal-header">
                        <h4 class="modal-title">Delete disease</h4>
                    </div>
                    <form method="POST" id="delete-disease" action="${pageContext.request.contextPath}/manager/disease/delete">
                        <input type="hidden" name="id">
                        <div class="modal-body">
                            <p>Are you sure want to delete this?</p>
                            <div class="m-t-20">
                                <button class="btn btn-white" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-danger">Delete</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Js -->
    <jsp:include page="../../includes/manager/js.jsp" />
    <script>
        $(document).ready(() => {
            $('#page-name').text('Diseases');
            $('#sidebar-diseases').addClass("active");
        });

        // Remove Disease
        const removeDiseaseByID = id => {
            $('#delete-disease > input').val(id);
        };
    </script>
</body>
</html>