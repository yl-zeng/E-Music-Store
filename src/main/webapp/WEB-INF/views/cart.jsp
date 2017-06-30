<%@ include file="/WEB-INF/views/template/footer.jsp"%>



<section>
    <div class="jumbotron">
        <div class="container">
            <h1>Cart</h1>

            <p>All the selected products in your shopping cart</p>
        </div>
    </div>
</section>

<section class="container">
    <div>
        <a class="btn btn-danger pull-left"><span class="glyphicon glyphicon-remove-sign"/>Clear Cart</a>
    </div>

    <table class="table table-hover">
        <tr>
            <th>Product</th>
            <th>Unit Price</th>
            <th>Quantity</th>
            <th>Price</th>
            <th>Action</th>
        </tr>
        <tr>
            <td>ProductName</td>
            <td>Product price</td>
            <td>Quantity</td>
            <td>Price</td>
            <td>Remove Button</td>
        </tr>
        <tr>
            <th></th>
            <th></th>
            <th>Grand Total</th>
            <th>grandTotal</th>
            <th></th>
        </tr>
    </table>

    <a href="<spring:url value="/productList" />">Continue Shopping</a>

</section>





<%@ include file="/WEB-INF/views/template/footer.jsp"%>