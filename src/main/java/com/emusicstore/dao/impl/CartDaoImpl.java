package com.emusicstore.dao.impl;

import com.emusicstore.dao.CartDao;
import com.emusicstore.model.Cart;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by genji on 7/10/2017.
 */

@Repository
@Transactional
public class CartDaoImpl implements CartDao {

    @Autowired
    SessionFactory sessionFactory;

    public Cart getCartById(int cartId){
        Session session = sessionFactory.getCurrentSession();
        return (Cart)session.get(Cart.class,cartId);
    }

    public void update(Cart cart){
        int cartId = cart.getCartId();

    }
}
