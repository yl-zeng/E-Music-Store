package com.emusicstore.model;

import java.util.HashMap;

/**
 * Created by genji on 6/29/2017.
 */
public class Cart {

    private String cartId;
    private HashMap<Long,CartItem> cartItems;

    private double grandTotal;

    private Cart(){
        cartItems = new HashMap<Long,CartItem>();
    }

    public Cart(String cartId){
        this();
        this.cartId = cartId;
    }

    public String getCartId() {
        return cartId;
    }

    public void setCartId(String cartId) {
        this.cartId = cartId;
    }

    public HashMap<Long, CartItem> getCartItems() {
        return cartItems;
    }

    public void setCartItems(HashMap<Long, CartItem> cartItems) {
        this.cartItems = cartItems;
    }

    public double getGrandTotal() {
        return grandTotal;
    }

    public void setGrandTotal(double grandTotal) {
        this.grandTotal = grandTotal;
    }

    public void addCartItem(CartItem item){
        Long productId = item.getProduct().getProductId();

        if(cartItems.containsKey(productId)){
            CartItem exsitingCartItem = cartItems.get(productId);
            exsitingCartItem.setQuantity(exsitingCartItem.getQuantity() + item.getQuantity());
            cartItems.put(productId,exsitingCartItem);
        }else{
            cartItems.put(productId,item);
        }

        updateGrandTotal();

    }

    public void removeCartItem (CartItem item){
        Long productId = item.getProduct().getProductId();
        cartItems.remove(productId);
        updateGrandTotal();
    }

    public void updateGrandTotal(){
        grandTotal = 0;
        for(CartItem item: cartItems.values()){
            grandTotal += item.getTotalPrice();
        }
    }





}
