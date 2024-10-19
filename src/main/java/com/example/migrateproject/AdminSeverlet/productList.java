package com.example.migrateproject.AdminSeverlet;

import java.io.*;

import com.example.migrateproject.model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "productListServlet", value = "/productList-servlet")
public class productList extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {


    }

    public void destroy() {
    }
}