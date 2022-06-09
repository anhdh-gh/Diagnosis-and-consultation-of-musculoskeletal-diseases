<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
<head>
    <jsp:include page="../../includes/manager/css.jsp" />
    <title>Attributes</title>
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

                <div class="content-page">
                    <div class="row">
                        <div class="col-md-12 mb-3">
                            <div class="table-responsive">
                                <table class="table custom-table datatable">
                                    <thead class="thead-light">
                                        <tr>
                                            <th>Name</th>
                                            <th>Weight</th>
                                            <th>Quantity values</th>
                                            <th>Values</th>
                                            <th>Quantity disease</th>
                                            <th>Diseases</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="attributeDTO" items="${attributeDTOs}">
                                            <tr>
                                                <td>${attributeDTO.name}</td>
                                                <td>${attributeDTO.weight}</td>
                                                <td>${attributeDTO.values.size()}</td>
                                                <td>
                                                    <div class="dropdown">
                                                        <c:if test="${attributeDTO.values.size() == 1}">
                                                            <span role="button"
                                                                  class="btn btn-white btn-sm btn-rounded"
                                                            >${attributeDTO.values[0]}
                                                            </span>
                                                        </c:if>

                                                        <c:if test="${attributeDTO.values.size() > 1}">
                                                            <span role="button"
                                                                  class="btn btn-white btn-sm btn-rounded dropdown-toggle"
                                                                  data-toggle="dropdown" aria-expanded="false">${attributeDTO.values[0]}
                                                            </span>
                                                            <div class="dropdown-menu">
                                                                <c:forEach var="value" items="${attributeDTO.values}">
                                                                    <span style="cursor: pointer" class="dropdown-item">${value}</span>
                                                                </c:forEach>
                                                            </div>
                                                        </c:if>
                                                    </div>
                                                </td>

                                                <td>${attributeDTO.diseases.size()}</td>

                                                <td>
                                                    <div class="dropdown">
                                                        <c:if test="${attributeDTO.diseases.size() == 1}">
                                                            <span role="button"
                                                                  class="btn btn-white btn-sm btn-rounded"
                                                            >${attributeDTO.diseases[0].name}
                                                            </span>
                                                        </c:if>

                                                        <c:if test="${attributeDTO.diseases.size() > 1}">
                                                            <span role="button"
                                                                  class="btn btn-white btn-sm btn-rounded dropdown-toggle"
                                                                  data-toggle="dropdown" aria-expanded="false">${attributeDTO.diseases[0].name}
                                                            </span>
                                                            <div class="dropdown-menu">
                                                                <c:forEach var="disease" items="${attributeDTO.diseases}">
                                                                    <span style="cursor: pointer" class="dropdown-item">${disease.name}</span>
                                                                </c:forEach>
                                                            </div>
                                                        </c:if>
                                                    </div>
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
            $('#page-name').text('Attributes');
            $('#sidebar-attribute').addClass("active");
        });
    </script>
</body>
</html>