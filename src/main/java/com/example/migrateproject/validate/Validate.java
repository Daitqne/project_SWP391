/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.migrateproject.validate;

import java.security.MessageDigest;
<<<<<<< HEAD
import com.example.migrateproject.model.ReturnData;

/**
 *
 * @author hieun
 */
public class Validate {
    
    public static ReturnData inputIsNull(String input){
    ReturnData r=new ReturnData();
    if(input.trim().equals("")){
        r.setReturnCode(1);
        r.setReturnMessage("Input is null!");
    }
    return r;
}  public static StringBuilder getEncryptString(String input) {
    try {
        MessageDigest md = MessageDigest.getInstance("SHA-256");
        byte[] messageDigest = md.digest(input.getBytes());
        StringBuilder hexString = new StringBuilder();
        for (byte b : messageDigest) {
            String hex = Integer.toHexString(0xff & b);
            if (hex.length() == 1) hexString.append('0');
            hexString.append(hex);
        }
        
        return hexString;
    } catch (Exception e) {
        throw new RuntimeException(e);
    }

}
    public static void main(String[] args) {
        System.out.println(Validate.getEncryptString("123"));
=======
import java.util.Random;

import com.example.migrateproject.model.ReturnData;

/**
 * @author hieun
 */
public class Validate {

    public static ReturnData inputIsNull(String input) {
        ReturnData r = new ReturnData();
        if (input.trim().equals("")) {
            r.setReturnCode(1);
            r.setReturnMessage("Input is null!");
        }
        return r;
    }

    public static StringBuilder getEncryptString(String input) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] messageDigest = md.digest(input.getBytes());
            StringBuilder hexString = new StringBuilder();
            for (byte b : messageDigest) {
                String hex = Integer.toHexString(0xff & b);
                if (hex.length() == 1) hexString.append('0');
                hexString.append(hex);
            }

            return hexString;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

    }
    public static String generateRandomString(int length) {
        // Bao gồm các chữ cái thường, chữ số và ký tự đặc biệt
        String characterSet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()-_=+";
        StringBuilder randomString = new StringBuilder(length);
        Random random = new Random();

        // Tạo chuỗi ngẫu nhiên từ tập ký tự
        for (int i = 0; i < length; i++) {
            int randomIndex = random.nextInt(characterSet.length());
            randomString.append(characterSet.charAt(randomIndex));
        }

        return randomString.toString();
    }

    public static void main(String[] args) {
        System.out.println(getEncryptString(generateRandomString(8)));

>>>>>>> HieuNT
    }
}
