<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="CleanFruits" />
    <meta name="author" content="CleanFruits" />
    <title>Create Product - CleanFruits</title>
    <link href="/css/styles.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script>
        $(document).ready(() => {
            const avatarFile = $("#avatarFile");
            avatarFile.change(function (e) {
                const imgURL = URL.createObjectURL(e.target.files[0]);
                $("#avatarPreview").attr("src", imgURL);
                $("#avatarPreview").css({ "display": "block" });
            });
        });
    </script>
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>

<body class="sb-nav-fixed">
<jsp:include page="../layout/header.jsp" />
<div id="layoutSidenav">
    <jsp:include page="../layout/sidebar.jsp" />
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">Products</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
                    <li class="breadcrumb-item"><a href="/admin/product">Product</a></li>
                    <li class="breadcrumb-item active">Create</li>
                </ol>
                <div class="mt-5">
                    <div class="row">
                        <div class="col-md-6 col-12 mx-auto">
                            <h3>Create a product</h3>
                            <hr />
                            <form:form method="post" action="/admin/product/create" class="row"
                                       enctype="multipart/form-data" modelAttribute="newProduct">
                                <c:set var="errorName">
                                    <form:errors path="name" cssClass="invalid-feedback" />
                                </c:set>
                                <c:set var="errorPrice">
                                    <form:errors path="price" cssClass="invalid-feedback" />
                                </c:set>
                                <c:set var="errorDetailDesc">
                                    <form:errors path="detailDesc" cssClass="invalid-feedback" />
                                </c:set>
                                <c:set var="errorShortDesc">
                                    <form:errors path="shortDesc" cssClass="invalid-feedback" />
                                </c:set>
                                <c:set var="errorQuantity">
                                    <form:errors path="quantity" cssClass="invalid-feedback" />
                                </c:set>

                                <div class="mb-3 col-12 col-md-6">
                                    <label class="form-label">Name:</label>
                                    <form:input type="text"
                                                class="form-control ${not empty errorName ? 'is-invalid' : ''}"
                                                path="name" />
                                        ${errorName}
                                </div>
                                <div class="mb-3 col-12 col-md-6">
                                    <label class="form-label">Price:</label>
                                    <form:input type="number"
                                                class="form-control ${not empty errorPrice ? 'is-invalid' : ''}"
                                                path="price" />
                                        ${errorPrice}
                                </div>
                                <div class="mb-3 col-12">
                                    <label class="form-label">Detail description:</label>
                                    <form:textarea type="text"
                                                   class="form-control ${not empty errorDetailDesc ? 'is-invalid' : ''}"
                                                   path="detailDesc" />
                                        ${errorDetailDesc}
                                </div>
                                <div class="mb-3 col-12 col-md-6">
                                    <label class="form-label">Short description:</label>
                                    <form:input type="text"
                                                class="form-control ${not empty errorShortDesc ? 'is-invalid' : ''}"
                                                path="shortDesc" />
                                        ${errorShortDesc}
                                </div>
                                <div class="mb-3 col-12 col-md-6">
                                    <label class="form-label">Quantity:</label>
                                    <form:input type="number"
                                                class="form-control ${not empty errorQuantity ? 'is-invalid' : ''}"
                                                path="quantity" />
                                        ${errorQuantity}
                                </div>

                                <div class="mb-3 col-12 col-md-6">
                                    <label class="form-label">Factory:</label>
                                    <form:select class="form-select" path="factory">
                                        <form:option value="THAILAN">Thái Lan</form:option>
                                        <form:option value="PHILIPPINES">Philippines</form:option>
                                        <form:option value="MEXICO">Mexico</form:option>
                                        <form:option value="AUSTRALIA">Australia</form:option>
                                        <form:option value="VIETNAM">Việt Nam</form:option>
                                        <form:option value="USA">USA</form:option>
                                    </form:select>
                                </div>
                                <div class="mb-3 col-12 col-md-6">
                                    <label class="form-label">Target:</label>
                                    <form:select class="form-select" path="target">
                                        <form:option value="TRAICAYTUOI">Trái cây tươi</form:option>
                                        <form:option value="TRAICAYHUUCO">Trái cây hữu cơ
                                        </form:option>
                                        <form:option value="TRAICAYNHAPKHAU">Trái cây nhập khẩu
                                        </form:option>
                                        <form:option value="TRAICAYKHO">Trái cây khô</form:option>
                                        <form:option value="TRAICAYCHOTREEM">Trái cây cho trẻ em</form:option>
                                    </form:select>
                                </div>
                                <div class="mb-3 col-12 col-md-6">
                                    <label for="avatarFile" class="form-label">Image:</label>
                                    <input class="form-control" type="file" id="avatarFile"
                                           accept=".png, .jpg, .jpeg" name="hoidanitFile" />
                                </div>
                                <div class="col-12 mb-3">
                                    <img style="max-height: 250px; display: none;" alt="avatar preview"
                                         id="avatarPreview" />
                                </div>
                                <div class="col-12 mb-5">
                                    <button type="submit" class="btn btn-primary">Create</button>
                                </div>
                            </form:form>

                        </div>

                    </div>
                </div>
            </div>
        </main>
        <jsp:include page="../layout/footer.jsp" />
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
<script src="/js/scripts.js"></script>

</body>

</html>