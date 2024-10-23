package com.example.migrateproject.dao;

import com.example.migrateproject.model.Attribute;
import com.example.migrateproject.model.CarColor;
import com.example.migrateproject.model.Product;

import java.util.List;

public class InfoProductDAO {
    Product product;
    List<CarColor> carColor;
    List<Attribute> attribute;

    public InfoProductDAO(Product product, List<CarColor> carColor, List<Attribute> attribute) {
        this.product = product;
        this.carColor = carColor;
        this.attribute = attribute;
    }

    public InfoProductDAO() {
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public List<CarColor> getCarColor() {
        return carColor;
    }

    public void setCarColor(List<CarColor> carColor) {
        this.carColor = carColor;
    }

    public List<Attribute> getAttribute() {
        return attribute;
    }

    public void setAttribute(List<Attribute> attribute) {
        this.attribute = attribute;
    }
}
