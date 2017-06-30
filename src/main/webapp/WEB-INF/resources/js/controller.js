
var cartApp = angular.module ("cartApp",[]);

cartApp.controller("cartCtrl",function ($scope,$http){
    $scope.refreshCart = function(cartId){
        console.log("refresh: ",cartId);
        $http.get('/rest/cart/' + $scope.cartId).success(function (data){
           $scope.cart = data;
           console.log("cart: ",$scope.cart);
        });
    };

    $scope.deleteCart = function(){
        $http.delete("/rest/cart/" + $scope.cartId).success($scope.refreshCart($scope.cartId));
    };

    $scope.initCartId = function(cartId){
        $scope.cartId = cartId;
        console.log(cartId);
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
        $http.put("/rest/cart/remove/" + productId).success(function(data){
            $scope.refreshCart($http.get("/rest/cart/cartId"));
            alert("product successfully removed");
        })
    };

    $scope.clearCart = function(cartId){
        $http.delete("/rest/cart/" + cartId).success(function(data){
            $scope.refreshCart($http.get("/rest/cart/cartId"));
        })
    };
});