package com.example.migrateproject.dao;

import com.example.migrateproject.dal.IProduct;
import com.example.migrateproject.model.Product;
import dto.GetTopProductsWithFirstAttribute;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO extends DBContext implements IProduct {
    @Override
    public ArrayList<GetTopProductsWithFirstAttribute> getTopProductsWithFirstAttribute() {
        ArrayList<GetTopProductsWithFirstAttribute> list = new ArrayList<>();
        try {
            String sql = "{call GetTopProductsWithFirstAttribute}";
            CallableStatement ps=connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new GetTopProductsWithFirstAttribute(rs.getInt(1),
                        rs.getString(2),rs.getFloat(3),rs.getString(4)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public ArrayList<Product> getTop4HondaCivic() {
        ArrayList<Product> list = new ArrayList<>();
        try {
            String sql = "{call SP_GetTop4HondaCivic}";
            CallableStatement ps=connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt("product_id"),
                        rs.getString("product_name"),
                        rs.getInt("region_id"),
                        rs.getInt("automaker_id"),
                        rs.getInt("quantity"),
                        rs.getString("product_img"),
                        rs.getFloat("price"),
                        rs.getString("desciption")));
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public ArrayList<Product> getTop4HondaBRV() {
        ArrayList<Product> list = new ArrayList<>();
        try {
            String sql = "{call SP_GetTop4HondaBRV}";
            CallableStatement ps=connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt("product_id"),
                        rs.getString("product_name"),
                        rs.getInt("region_id"),
                        rs.getInt("automaker_id"),
                        rs.getInt("quantity"),
                        rs.getString("product_img"),
                        rs.getFloat("price"),
                        rs.getString("desciption")));
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public ArrayList<Product> getTop4HondaCRV() {
        ArrayList<Product> list = new ArrayList<>();
        try {
            String sql = "{call SP_GetTop4HondaCRV}";
            CallableStatement ps=connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt("product_id"),
                        rs.getString("product_name"),
                        rs.getInt("region_id"),
                        rs.getInt("automaker_id"),
                        rs.getInt("quantity"),
                        rs.getString("product_img"),
                        rs.getFloat("price"),
                        rs.getString("desciption")));
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public ArrayList<Product> getTop4HondaAccord() {
        return null;
    }

    @Override
    public ArrayList<Product> getAllProduct() {
        ArrayList<Product> list = new ArrayList<>();
        try {
            String sql = "{call SP_GetAllProduct}";
            CallableStatement ps=connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt("product_id"),rs.getString("product_name"),
                        rs.getInt("region_id"),rs.getInt("automaker_id"),
                        rs.getInt("quantity"),rs.getString("product_img"),
                        rs.getFloat("price")));
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public ArrayList<Product> getAllProductByAutumakerId(int id) {
        ArrayList<Product> list = new ArrayList<>();
        try {
            String sql = "{call SP_GetProductByAutomakerID(?)}";
            CallableStatement ps=connection.prepareCall(sql);
            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt("product_id"),rs.getString("product_name"),
                        rs.getInt("region_id"),rs.getInt("automaker_id"),
                        rs.getInt("quantity"),rs.getString("product_img"),
                        rs.getFloat("price")));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public static void main(String[] args) {
        ProductDAO dao=new ProductDAO();
        ArrayList<Product> list=dao.getTop4HondaCRV();
        for(Product g:list){
            System.out.println(g.getProductName());
        }
    }
}
