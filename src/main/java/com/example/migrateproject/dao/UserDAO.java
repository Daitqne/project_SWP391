/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.migrateproject.dao;

import com.example.migrateproject.dal.IUser;
import com.example.migrateproject.model.User;
<<<<<<< HEAD
=======

import java.sql.PreparedStatement;
>>>>>>> HieuNT
import java.util.ArrayList;
import java.sql.CallableStatement;
import java.sql.ResultSet;

/**
 *
 * @author hieun
 */
public class UserDAO extends DBContext implements IUser {

    @Override
    public User getUserLogin(String userName, String password) {
        User userLogin=new User();
        try{
            String sql="{call SP_UserLogin(?,?)};";
            CallableStatement ps=connection.prepareCall(sql);
            ps.setString(1, userName);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                userLogin.setUser_id(rs.getInt("user_id"));
                userLogin.setUser_name(rs.getString("user_name"));
                userLogin.setPassword(rs.getString("password"));
                userLogin.setProfile_img(rs.getString("profile_img"));
                userLogin.setRole_id(rs.getInt("role_id"));
            }
        }catch(Exception ex){
            System.out.println(ex);
        }
        return userLogin;
    }
<<<<<<< HEAD
=======

    @Override
    public User getUserLoginByGmail(String userName) {
        User userLogin=new User();
        try{
            String sql="SELECT * FROM [CarTheHieu].[dbo].[User] where [CarTheHieu].[dbo].[User].user_name= ?";
            CallableStatement ps=connection.prepareCall(sql);
            ps.setString(1, userName);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                userLogin.setUser_id(rs.getInt("user_id"));
                userLogin.setUser_name(rs.getString("user_name"));
                userLogin.setPassword(rs.getString("password"));
                userLogin.setProfile_img(rs.getString("profile_img"));
                userLogin.setRole_id(rs.getInt("role_id"));
            }
        }catch(Exception ex){
            System.out.println(ex);
        }
        return userLogin;
    }

>>>>>>> HieuNT
    public static void main(String[] args) {

    }  

    @Override
    public ArrayList<User> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
<<<<<<< HEAD
=======

    @Override
    public boolean UpdateUser(String password, int user_id) {
        try{
            String query="update [dbo].[User]\n" +
                    "set password=?\n" +
                    "where user_id=?";
            PreparedStatement ps=connection.prepareStatement(query);
            ps.setString(1,password);
            ps.setInt(2,user_id);
            return ps.executeUpdate()>0;
        }catch (Exception ex){

        }
        return false;
    }
>>>>>>> HieuNT
}
