<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

<html>


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container-wrapper" style="margin-top:50px">
    <div class="container">
        <div class="page-header">
            <h1>Product Inventory Page</h1>

            <p class="lead">This is Inventory Page</p>

            <table class="table table-striped table-hover">
                <thead>
                <tr class="bg-success">
                    <th>Photo Thumb</th>
                    <th>Product Name</th>
                    <th>Category</th>
                    <th>Condition</th>
                    <th>Price</th>
                    <th></th>
                </tr>
                </thead>
                <c:forEach items="${products}" var="product">
                    <tr>
                        <td><img src="<c:url value="/resources/images/${product.productId}.png"/>"
                                 alt="image" style="width:100%"/></td>
                        <td>${product.productName}</td>
                        <td>${product.productCategory}</td>
                        <td>${product.productCondition}</td>
                        <td>${product.productPrice}</td>
                        <td>
                            <a href="<spring:url value="/productList/viewProduct/${product.productId}" />">
                                <span class="glyphicon glyphicon-eye-open"></span>
                            </a>
                            <a href="<spring:url value="/admin/productInventory/editProduct/${product.productId}" />">
                                <span class="glyphicon glyphicon-pencil"></span>
                            </a>
                            <a href="<spring:url value="/admin/productInventory/deleteProduct/${product.productId}" />">
                                <span class="glyphicon glyphicon-remove"></span>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </table>

            <a href="<spring:url value="/admin/productInventory/addProduct"/>" ><button class="btn btn-primary">Add Product</button></a>

        </div>

        <%@ include file="/WEB-INF/views/template/footer.jsp" %>
