package com.example.migrateproject.dao;

import com.example.migrateproject.dal.ICustomerUser;
import dto.CustomerUser;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CustomerUserDAO extends DBContext implements ICustomerUser {
    @Override
    public CustomerUser getCustomerInformation(int user_id) {
        CustomerUser customerUser=null;
//        try{
//            String query="select u.user_name,c.first_name,c.last_name,c.phone,c.email,c.address from [dbo].[User] as u\n" +
//                    "join Customer as c on u.user_id=c.user_id\n" +
//                    "where u.user_id=?";
//            PreparedStatement ps=connection.prepareStatement(query);
//            ps.setInt(1,user_id);
//            ResultSet rs=ps.executeQuery();
//            while(rs.next()){
//                customerUser.setUserName(rs.getString(1));
//                customerUser.setFullName();
//            }
//        }catch (Exception ex){
//
//        }
        return customerUser;
    }
}
