package com.example.migrateproject.dao;

import com.example.migrateproject.dal.IProduct;
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
    public ArrayList<GetTopProductsWithFirstAttribute> getTop4HondaCivic() {
        ArrayList<GetTopProductsWithFirstAttribute> list = new ArrayList<>();
        try {
            String sql = "{call SP_GetTop4HondaCivic}";
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
    public ArrayList<GetTopProductsWithFirstAttribute> getTop4HondaBRV() {
        ArrayList<GetTopProductsWithFirstAttribute> list = new ArrayList<>();
        try {
            String sql = "{call SP_GetTop4HondaBRV}";
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

    public static void main(String[] args) {
        ProductDAO dao=new ProductDAO();
        ArrayList<GetTopProductsWithFirstAttribute> list=dao.getTop4HondaBRV();
        for(GetTopProductsWithFirstAttribute g:list){
            System.out.println(g.getAttributeImg());
        }
    }
}
