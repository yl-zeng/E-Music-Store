<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>


<section>
    <div class="jumbotron">
        <div class="container">
            <h1 class="alert-danger">Checkout Cancelled</h1>

            <p>Your checkout process is cancelled. You may continue shopping.</p>

        </div>
    </div>
</section>

<section class="container" ng-app="cartApp">

    <a href="<spring:url value="/product/productList" />" class="btn btn-default">Ok</a>
</section>

<!-- Angular Controller -->

<%@ include file="/WEB-INF/views/template/footer.jsp" %>