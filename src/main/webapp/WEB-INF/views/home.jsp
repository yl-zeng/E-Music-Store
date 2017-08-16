<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>


<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide" src="<c:url value="/resources/images/back1.jpg"/>" alt="First slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Welcome to Yunlin's Music Store</h1>
                    <p>Here you can browse and buy Instruments, Records and music related Accessories. Order Now for Your Amazing New Kit!</p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="second-slide" src="<c:url value="/resources/images/back2.jpg"/>" alt="Second slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Facts you should know about music</h1>
                    <p>Music brings joy, to all of our hearts, It's one of those, emotional arts.</p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="third-slide" src="<c:url value="/resources/images/back3.jpg"/>" alt="Third slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>It's a Jazz affair</h1>
                    <p>Through ups and downs, Somehow I manage to survive in life.</p>
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div><!-- /.carousel -->


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
        <div class="col-lg-4">
            <a class="btn btn-default" role="button"
               href="<c:url value="/product/productList?searchCondition=Instrument"/>">
                <img class="img-circle" src="<c:url value="/resources/images/instrument.jpg"/>"  width="140" height="140">
            </a>
            <h2>Instrument</h2>
            <p>Well crafted and delicate instrument</p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <a class="btn btn-default" role="button"
               href="<c:url value="/product/productList?searchCondition=Record"/>">
                <img class="img-circle" src="<c:url value="/resources/images/record.jpg"/>"  width="140" height="140">
            </a>
            <h2>Discography</h2>
            <p>An exceptional collections of music records in favor of the traditional and modern genre of jazz.</p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <a class="btn btn-default" role="button"
               href="<c:url value="/product/productList?searchCondition=Accessory"/>">
                <img class="img-circle" src="<c:url value="/resources/images/accessory.jpg"/>"  width="140" height="140">
            </a>
            <h2>Accessory</h2>
            <p>All musical and related geeky goods</p>
        </div><!-- /.col-lg-4 -->

    </div><!-- /.row -->
    
    <%@include file="/WEB-INF/views/template/footer.jsp"%>
