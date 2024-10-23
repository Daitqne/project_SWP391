package com.example.migrateproject.dal;

import dto.GetTopProductsWithFirstAttribute;

import java.util.ArrayList;
import java.util.List;

public interface IProduct {
    ArrayList<GetTopProductsWithFirstAttribute> getTopProductsWithFirstAttribute();
    ArrayList<GetTopProductsWithFirstAttribute> getTop4HondaCivic();
    ArrayList<GetTopProductsWithFirstAttribute> getTop4HondaBRV();
}
