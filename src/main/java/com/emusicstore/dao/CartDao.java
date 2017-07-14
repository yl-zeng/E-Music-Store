package com.emusicstore.dao;

import com.emusicstore.model.Cart;

/**
 * Created by genji on 6/29/2017.
 */
public interface CartDao {


    Cart getCartById(int cartId);

    void update(Cart cart);
}
