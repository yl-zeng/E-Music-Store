
var cartApp = angular.module ("cartApp",[]);

cartApp.controller("cartCtrl",function ($scope,$http){
    $scope.refreshCart = function(){
        $http.get('/rest/cart/' + $scope.cartId).success(function (data){
           $scope.cart = data;
           console.log("cart: ",$scope.cart);
        });
    };

    $scope.deleteCart = function(){
        $http.delete("/rest/cart/" + $scope.cartId).success($scope.refreshCart());
    };

    $scope.initCartId = function(cartId){
        $scope.cartId = cartId;
        $scope.refreshCart(cartId);
    };

    $scope.addToCart = function(productId) {
        console.log("addToCart: ",productId);
        $http.put("/rest/cart/add/" + productId).success(function(data){
            $scope.refreshCart($http.get("/rest/cart/cartId"));
            alert("product successfully added to cart");
        })
    };

    $scope.removeFromCart = function(productId){
        $http.put("/rest/cart/remove/" + productId).success(function(){
            alert("product successfully removed");
        })
    };

    $scope.clearCart = function(cartId){
        $http.delete("/rest/cart/" + cartId).success(function(){
            $scope.refreshCart();
        })
    };

    $scope.calGrandTotal = function () {
        var grandTotal = 0;

        for(var i = 0; i<$scope.cartItems.length; i++){
            grandTotal += $scope.cartItem[i].totalPrice;
        }

        return grandTotal;
    }
});