package com.emusicstore.service;

import com.emusicstore.model.Cart;

/**
 * Created by genji on 7/10/2017.
 */
public interface CartService {

    Cart getCartById(int cartId);

    void update(Cart cart);
}
