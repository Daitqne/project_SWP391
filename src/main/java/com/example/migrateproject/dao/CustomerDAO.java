package com.example.migrateproject.dao;

import com.example.migrateproject.dal.ICustomer;
import com.example.migrateproject.model.Product;
import dto.Customer;

import java.sql.Array;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class CustomerDAO extends DBContext implements ICustomer {
    @Override
    public ArrayList<Customer> getAllCustomer() {
        ArrayList<Customer> list = new ArrayList<>();
        try {
            String sql = "{call SP_GetAllCustomer}";
            CallableStatement ps=connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Customer(rs.getString(1),rs.getString(2),rs.getString(3),
                        rs.getString(3),rs.getString(5)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public static void main(String[] args) {
        CustomerDAO dao=new CustomerDAO();
        ArrayList<Customer> list=dao.getAllCustomer();
        for(Customer c:list){
            System.out.println(c.getAddress());
        }
    }
}
