package com.emusicstore.dao;

import com.emusicstore.model.Product;

import java.util.List;

/**
 * Created by genji on 6/26/2017.
 */
public interface ProductDao {

    void addProduct(Product product);

    Product getProductById(Long id);

    List<Product> getAllProducts();

    void deleteProduct(Long id);

    void editProduct(Product product);
}
