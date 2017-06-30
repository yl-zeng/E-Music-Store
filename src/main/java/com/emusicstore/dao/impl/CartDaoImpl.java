package com.emusicstore.dao.impl;

import com.emusicstore.dao.CartDao;
import com.emusicstore.model.Cart;
import org.springframework.stereotype.Repository;

import java.util.HashMap;

/**
 * Created by genji on 6/29/2017.
 */


@Repository
public class CartDaoImpl implements CartDao {
    private HashMap<Long, Cart> listOfCarts;

    public CartDaoImpl() {
        listOfCarts = new HashMap<Long, Cart>();
    }

    public Cart create(Cart cart) {
        if (listOfCarts.containsKey(cart.getCartId())) {
            throw new IllegalArgumentException(String.format("Cannot create of a cart. " +
                    "A cart with given ID already exists", cart.getCartId()));
        }

        listOfCarts.put(cart.getCartId(), cart);

        return cart;
    }

    public Cart read(Long cartId) {
        return listOfCarts.get(cartId);
    }

    public void update(Long cartId, Cart cart) {
        if (!listOfCarts.containsKey(cartId)) {
            throw new IllegalArgumentException(String.format("Cannot update cart. " +
                    "The cart doesn't exist", cart.getCartId()));
        }

        listOfCarts.put(cartId, cart);
    }

    public void delete (Long cartId){
        if(!listOfCarts.containsKey(cartId)){
            throw new IllegalArgumentException(String.format("Cannot delete cart. " +
                    "The cart doesn't exist", cartId));
        }
        listOfCarts.remove(cartId);
    }


}
