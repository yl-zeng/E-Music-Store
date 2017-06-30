<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container-wrapper" style="margin-top:50px">
    <div class="container">
        <div class="page-header">
            <h1>Product Detail</h1>

            <p class="lead">Here's detail information of product</p>
        </div>

        <div class="container" ng-app="cartApp">
            <div class="row">
                <div class="col-sm-5">
                    <img src="<c:url value="/resources/images/${product.productId}.png"/>"
                         alt="image" style="width:100%;height:300px"/>
                </div>
                <div class="col-sm-5">
                    <h3>${product.productName}</h3>
                    <p>${product.productDescription}</p>
                    <p><strong>Manufacturer</strong>: ${product.productManufacturer}</p>
                    <p><strong>Category</strong>: ${product.productCategory}</p>
                    <p><strong>Condition</strong>: ${product.productCondition}</p>
                    <p><strong>Price</strong>: ${product.productPrice}</p>
                </div>
                <br>
                <c:set var="role" scope="page" value="${param.role}"/>
                <c:set var="url" scope="page" value="/productList"/>
                <c:if test="${role='admin'}">
                    <c:set var="url" scope="page" value="/admin/productInventory"/>
                </c:if>

                <p ng-controller="cartCtrl">
                    <a href="<c:url value="${url}"/>" class="btn btn-default">Back</a>
                    <a href="#" class="btn btn-warning btn-large" ng-click="addToCart('${product.productId}')">
                        <span class="glyphicon glyphicon-shopping-cart"/>Order Now</a>
                    <a href="<spring:url value="/cart" />" class="btn btn-default">
                        <span class="glyphicon glyphicon-hand-right"/>View Cart</a>
                </p>
            </div>
        </div>

        <!-- Angular Controller -->
        <script src="<c:url value="/resources/js/controller.js"/>"/>
        <%@ include file="/WEB-INF/views/template/footer.jsp" %>
