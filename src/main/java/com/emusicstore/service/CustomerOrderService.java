package com.emusicstore.service;

import com.emusicstore.model.CustomerOrder;

/**
 * Created by genji on 7/15/2017.
 */

public interface CustomerOrderService {

    void addCustomerOrder(CustomerOrder customerOrder);

    double getCustomerOrderGrandTotal(int cartId);
}
