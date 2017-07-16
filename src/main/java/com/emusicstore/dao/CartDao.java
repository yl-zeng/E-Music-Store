package com.emusicstore.dao;

import com.emusicstore.model.Cart;

import java.io.IOException;

/**
 * Created by genji on 6/29/2017.
 */
public interface CartDao {

    Cart getCartById(int cartId);

    Cart validate(int cartId) throws IOException;

    void update(Cart cart);
}
