<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>


<section>
    <div class="jumbotron">
        <div class="container">
            <h1>Thank you for your business!</h1>

            <p>Your order will be shipped in 2 business day</p>

        </div>
    </div>
</section>

<section class="container" ng-app="cartApp">

    <a href="<spring:url value="/" />" class="btn btn-default">Ok</a>
</section>

<!-- Angular Controller -->

<%@ include file="/WEB-INF/views/template/footer.jsp" %>