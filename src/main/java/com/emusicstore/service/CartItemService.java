package com.emusicstore.service;

import com.emusicstore.model.Cart;
import com.emusicstore.model.CartItem;

/**
 * Created by genji on 7/11/2017.
 */

public interface CartItemService {
    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId(int productId);

}
