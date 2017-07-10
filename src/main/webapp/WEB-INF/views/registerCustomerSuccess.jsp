<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>


<section>
    <div class="jumbotron">
        <div class="container">
            <h1>Customer Register Successfully</h1>

        </div>
    </div>
</section>

<section class="container" ng-app="cartApp">

    <a href="<spring:url value="/product/productList" />" class="btn btn-default">Products</a>
</section>

<!-- Angular Controller -->

<script src="<c:url value="/resources/js/controller.js"/>"/>
<%@ include file="/WEB-INF/views/template/footer.jsp" %>