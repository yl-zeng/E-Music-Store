package com.emusicstore.dao;

import com.emusicstore.model.Product;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by genji on 6/25/2017.
 */
public class ProductDao {

    private List<Product> productList;

    public List<Product> getProductList(){
        Product product1 = new Product();

        product1.setProductName("Guitar1");
        product1.setProductCategory("Instrument");
        product1.setProductDescription("This is a fender strat guitar");
        product1.setProductPrice(1200);
        product1.setProductCondition("new");
        product1.setProductStatus("Active");
        product1.setUnitInStock(11);
        product1.setProductManufacturer("Fender");

        Product product2 = new Product();

        product2.setProductName("Guitar2");
        product2.setProductCategory("Instrument");
        product2.setProductDescription("This is a fender2 strat guitar");
        product2.setProductPrice(12);
        product2.setProductCondition("new");
        product2.setProductStatus("Active");
        product2.setUnitInStock(13);
        product2.setProductManufacturer("Fender");

        Product product3 = new Product();

        product3.setProductName("Guitar3");
        product3.setProductCategory("Instrument");
        product3.setProductDescription("This is a fender3 strat guitar");
        product3.setProductPrice(192);
        product3.setProductCondition("new");
        product3.setProductStatus("Active");
        product3.setUnitInStock(193);
        product3.setProductManufacturer("Fender3");

        productList = new ArrayList<Product>();
        productList.add(product1);
        productList.add(product2);
        productList.add(product3);

        return productList;
    }
}
