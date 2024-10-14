package com.example.migrateproject.dal;

import com.example.migrateproject.model.Product;
import dto.GetTopProductsWithFirstAttribute;

import java.util.ArrayList;
import java.util.List;

public interface IProduct {
    ArrayList<GetTopProductsWithFirstAttribute> getTopProductsWithFirstAttribute();
    ArrayList<Product> getTop4HondaCivic();
    ArrayList<Product> getTop4HondaBRV();
    ArrayList<Product> getTop4HondaCRV();
    ArrayList<Product> getTop4HondaAccord();
    ArrayList<Product> getAllProduct();
    ArrayList<Product> getAllProductByAutumakerId(int id);
}
