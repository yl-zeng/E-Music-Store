<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>

<html>


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container-wrapper" style="margin-top:50px">
    <div class="container">
        <div class="page-header">
            <h1>Our Products</h1>

            <p class="lead">Checkout all the awesome product available now</p>

            <table class="table table-striped table-hover">
                <thead>
                    <tr class="bg-success">
                        <th>Photo Thumb</th>
                        <th>Product Name</th>
                        <th>Category</th>
                        <th>Condition</th>
                        <th>Price</th>
                    </tr>
                </thead>
                <c:forEach items="${products}" var="product">
                    <tr>
                        <td><img src="#" alt="image"/></td>
                        <td>${product.productName}</td>
                        <td>${product.productCategory}</td>
                        <td>${product.productCondition}</td>
                        <td>${product.productPrice}</td>
                    </tr>
                </c:forEach>
            </table>

        </div>

<%@ include file="/WEB-INF/views/template/header.jsp"%>
