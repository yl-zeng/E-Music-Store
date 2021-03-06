<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Yunlin's E-Music-Store</title>



    <!-- Bootstrap core CSS -->
    <link href="<c:url value='/resources/css/bootstrap.min.css'/>" rel="stylesheet">
    <link href="<c:url value='/resources/css/main.css'/>" rel="stylesheet">
    <link href="<c:url value='/resources/css/carousel.css'/>" rel="stylesheet">
    <link href="//cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>

    <!-- Angular -->

</head>
<!-- NAVBAR
================================================== -->
<body>
<div class="navbar-wrapper">
    <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                            aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="<c:url value="/" />" class="navbar-brand" href="#">E-Music-Store</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="<c:url value="/"/>">Home</a></li>
                        <li><a href="<c:url value="/product/productList/all"/>">Products</a></li>
                        <li><a href="<c:url value="/about"/>">About</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <c:if test = "${pageContext.request.userPrincipal.name != null}">
                            <li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
                            <li><a href="<c:url value="/j_spring_security_logout"/>">Logout</a></li>
                            <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
                                <li><a href="<c:url value="/customer/cart"/>">Cart</a></li>
                            </c:if>
                            <c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
                                <li><a href="<c:url value="/admin"/>">Admin</a></li>
                            </c:if>
                        </c:if>
                        <c:if test = "${pageContext.request.userPrincipal.name == null}">
                            <li><a href="<c:url value="/register"/>"><span class="glyphicon glyphicon-user"></span>Sign up</a></li>
                            <li><a href="<c:url value="/admin" />"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
                        </c:if>

                    </ul>
                </div>
            </div>
        </nav>

    </div>
</div>