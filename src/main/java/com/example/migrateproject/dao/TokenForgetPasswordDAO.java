package com.example.migrateproject.dao;

import com.example.migrateproject.dal.ITokenForgetPassword;
import com.example.migrateproject.model.TokenForgetPassword;

import java.sql.PreparedStatement;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class TokenForgetPasswordDAO extends DBContext implements ITokenForgetPassword {
    public String getFormatDate(LocalDateTime myDateObj) {
        DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        String formattedDate = myDateObj.format(myFormatObj);
        return formattedDate;
    }
    @Override
    public boolean insertTokenForgetPassword(TokenForgetPassword tokenForgetPassword) {
        try{
            String query="insert into TokenForgetPassword(token,expriyTime,isCustomer,customer_id)\n" +
                    "value(?,?,?,?,?)";
            PreparedStatement ps=connection.prepareStatement(query);
            ps.setString(1,tokenForgetPassword.getToken());
            ps.setTimestamp(2, Timestamp.valueOf(getFormatDate(tokenForgetPassword.getExpiryTime())));
            ps.setBoolean(3,tokenForgetPassword.isUser());
            ps.setInt(1,tokenForgetPassword.getUser_id());
            return ps.executeUpdate()>0;
        }catch (Exception ex){
            System.out.println(ex.getMessage());
        }
        return false;
    }
}
