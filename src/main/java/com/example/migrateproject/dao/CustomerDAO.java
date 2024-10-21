package com.example.migrateproject.dao;

import com.example.migrateproject.dal.ICustomer;
import com.example.migrateproject.model.Customer;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class CustomerDAO extends DBContext implements ICustomer {
    @Override
    public ArrayList<Customer> getAllCustomer() {
        ArrayList<Customer> list = new ArrayList<>();
        try {
            String query="select *from Customer";
            PreparedStatement ps= connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Customer(rs.getInt("customer_id"),
                        rs.getInt("user_id"),
                        rs.getString("first_name"),
                        rs.getString("last_name"),
                        rs.getString("phone"),
                        rs.getString("email"),
                        rs.getString("address"),
                        rs.getDate("created_at")));
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Customer getCustomerByEmail(String email) {
        Customer customer = null;
        try {
            // Câu truy vấn để lấy ra customer có email tương ứng
            String query = "SELECT * FROM Customer WHERE email = ?";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, email);  // Gán giá trị email vào câu truy vấn

            ResultSet rs = ps.executeQuery();

            // Nếu có kết quả, khởi tạo đối tượng Customer
            if (rs.next()) {
                customer = new Customer(rs.getInt("customer_id"),
                        rs.getInt("user_id"),
                        rs.getString("first_name"),
                        rs.getString("last_name"),
                        rs.getString("phone"),
                        rs.getString("email"),
                        rs.getString("address"),
                        rs.getDate("created_at"));
            }
        } catch (Exception e) {
            e.printStackTrace();  // In ra lỗi nếu có
        }
        return customer;
    }

    public static void main(String[] args) {
        CustomerDAO dao=new CustomerDAO();
        ArrayList<Customer> lilst=dao.getAllCustomer();
        Customer cc=dao.getCustomerByEmail("hieunthe171211@gmail.com");
        for(Customer c:lilst){
            System.out.println(c.getCustomer_id());
        }
        System.out.println(cc.getAddress());
    }
}
