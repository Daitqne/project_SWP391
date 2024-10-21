package com.example.migrateproject.AdminSeverlet;

import java.io.*;
import java.util.ArrayList;

import com.example.migrateproject.dao.CustomerDAO;
import com.example.migrateproject.model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "accountListServlet", value = "/accountList-servlet")
public class accountList extends HttpServlet {

    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
//        HttpSession session=request.getSession();
//        User user=(User) session.getAttribute("user");
//        if(user==null){
//            request.getRequestDispatcher("/hondaotog3.com/login.jsp").forward(request,response);
//        }
//        CustomerDAO customerDAO=new CustomerDAO();
//        ArrayList<Customer> listCustomer=customerDAO.getAllCustomer();
//        request.setAttribute("listCustomer",listCustomer);
    }

    public void destroy() {
    }
}