package com.emusicstore.dao;

import com.emusicstore.model.Cart;

/**
 * Created by genji on 6/29/2017.
 */
public interface CartDao {
    Cart create(Cart cart);

    Cart read(Long cartId);

    void update(Long cartId, Cart cart);

    void delete(Long cartId);
}
