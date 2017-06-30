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
            <h1>Administrator page</h1>

            <p class="lead">This is admin page</p>

            <c:if test="${pageContext.request.userPrincipal.name!=null}">
                <h2>
                    Welcome: ${pageContext.request.userPrincipal.name} !
                    <a href="<c:url value="/j_spring_security_logout"/>">Logout</a>
                </h2>
            </c:if>

            <h3>
                <a href="<c:url value="/admin/productInventory" />">Product Inventory</a>
            </h3>

            <p>Here you can view, check and modify product inventory</p>

        </div>

        <%@ include file="/WEB-INF/views/template/footer.jsp" %>
