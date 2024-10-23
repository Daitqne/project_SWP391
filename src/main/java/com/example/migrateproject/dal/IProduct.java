package com.example.migrateproject.dal;

import com.example.migrateproject.dao.InfoProductDAO;
import com.example.migrateproject.model.Product;
import dto.GetTopProductsWithFirstAttribute;

import java.util.ArrayList;
import java.util.List;

public interface IProduct {
    ArrayList<GetTopProductsWithFirstAttribute> getTopProductsWithFirstAttribute();
    ArrayList<Product> getTop4HondaCivic();
    ArrayList<Product> getTop4HondaBRV();
    ArrayList<Product> getTop4HondaCRV();
    ArrayList<Product> getTop4HondaCity();
    ArrayList<Product> getTop4HondaHRV();
    ArrayList<Product> getTop4HondaAccord();
    ArrayList<Product> getAllProduct();
    ArrayList<Product> getAllProductByAutumakerId(int id);
    InfoProductDAO getProductByProductId(int id);
    int countProductByAutomakerId(int automaker_id);
    ArrayList<Product> phanTrang(int automaker_id,int indexSearch);
    List<Product> getProductPaginationByAutoMakerId(int automaker_id, int offset, int noOfRecords, String orderBy);
    int getTotalRecordsProductByAutoMakerId(int automaker_id);
}
