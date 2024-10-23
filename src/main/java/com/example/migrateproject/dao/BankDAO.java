package com.example.migrateproject.dao;

import com.example.migrateproject.dal.IBank;
import com.example.migrateproject.model.Automaker;
import com.example.migrateproject.model.Bank;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BankDAO extends DBContext implements IBank {

    @Override
    public List<Bank> getAllBank() {
        List<Bank> list = new ArrayList<>();
        try {
            String sql = "{call SP_GetAllBank}";
            CallableStatement ps=connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Bank(rs.getInt(1),rs.getString(2),rs.getDouble(3),
                        rs.getDouble(4),rs.getInt(5)));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }


        return list;
    }

    public static void main(String[] args) {
        BankDAO dao=new BankDAO();
        List<Bank> list=dao.getAllBank();
        if(!list.isEmpty()){
            System.out.println(list.size());
        }
        for(Bank b:list){
            b.getBank_name();
        }
    }
}
