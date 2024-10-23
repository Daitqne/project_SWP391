package com.example.migrateproject.controller;

import java.io.*;
import java.util.Properties;

import com.example.migrateproject.dal.IUser;
import com.example.migrateproject.dao.CustomerDAO;
import com.example.migrateproject.dao.UserDAO;
import com.example.migrateproject.model.Customer;
import com.example.migrateproject.model.resetService;
import com.example.migrateproject.validate.Validate;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

@WebServlet(name = "requestPassWordServlet", value = "/requestPassWord-servlet")
public class requestPassWord extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getRequestDispatcher("/hondaotog3.com/requestPassword.jsp").forward(request,response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String email=request.getParameter("email");
        CustomerDAO customerDAO=new CustomerDAO();
        Customer customer=customerDAO.getCustomerByEmail(email);
        if(customer==null){
            request.setAttribute("mess","Email khong ton tai");
            request.getRequestDispatcher("/hondaotog3.com/requestPassword.jsp").forward(request,response);
            return;
        }
        resetService service=new resetService();
        final String username = "hieunthe171211@gmail.com";
        final String password = "dahvajbutfcretda";
        Properties prop = new Properties();
        prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.port", "587");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.starttls.enable", "true"); // TLS
        Authenticator auth=new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username,password);
            }
        };
        Session session=Session.getInstance(prop,auth);
        final String to= customer.getEmail();
        IUser iuser=new UserDAO();
        String passwordNew= Validate.generateRandomString(8);
        boolean updatePassWord=iuser.UpdateUser(Validate.getEncryptString(passwordNew).toString(), customer.getUser_id());
        if(updatePassWord){
            MimeMessage msg=new MimeMessage(session);
            try {
                msg.addHeader("Content-type","charset=UTF-8");
                msg.setFrom(username);
                msg.setRecipients(Message.RecipientType.TO,InternetAddress.parse(to,false));
                msg.setSubject("Thu nhiem gui email");
                msg.setText("NewPassword :"+passwordNew,"UTF-8");
                Transport.send(msg);
            }catch (Exception ex){
                System.out.println("Gui that bai");
            }
        }

    }

    public void destroy() {
    }
}