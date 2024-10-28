package com.example.migrateproject.controller;

import java.io.*;
import java.util.Properties;

import com.example.migrateproject.dal.IUser;
import com.example.migrateproject.dao.CustomerDAO;
import com.example.migrateproject.dao.ProductDAO;
import com.example.migrateproject.dao.UserDAO;
import com.example.migrateproject.model.Customer;
import com.example.migrateproject.model.Product;
import com.example.migrateproject.model.User;
import com.example.migrateproject.validate.Validate;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

@WebServlet(name = "TestDriverServlet", value = "/TestDriver-servlet")
public class TestDriver extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session=request.getSession();
        User user=(User)session.getAttribute("user");
        if(user==null){
            response.sendRedirect("/hondaotog3.com/login.jsp");
        }
        try{
            int product_id=Integer.parseInt(request.getParameter("product_id"));
            ProductDAO productDAO=new ProductDAO();
            CustomerDAO customerDAO=new CustomerDAO();
            Product product= productDAO.getProductByProductID(product_id);
            Customer customer=customerDAO.getCustomerByUser_id(user.getUser_id());
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
            Session session1=Session.getInstance(prop,auth);
            final String to= customer.getEmail();
            IUser iuser=new UserDAO();
                MimeMessage msg=new MimeMessage(session1);
                try {
                    msg.addHeader("Content-type","charset=UTF-8");
                    msg.setFrom(username);
                    msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to,false));
                    msg.setSubject("Thu nhiem gui email");
                    msg.setText("Kinh gui :"+customer.getLastName()+" "+customer.getFristName()+"\n" +
                            "Bạn đã đăng kí lái thử thành công xe ô tô :"+product.getProductName(),"UTF-8");
                    Transport.send(msg);
                    response.sendRedirect("hondaotog3.com/login.jsp");
                }catch (Exception ex){
                    System.out.println("Gui that bai");
                }

        }catch (Exception ex){

        }
    }

    public void destroy() {
    }
}