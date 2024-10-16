package com.example.migrateproject.controller;

import java.io.*;

import com.example.migrateproject.dao.ProductDAO;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "shortProductServlet", value = "/shortProduct-servlet")
public class shortProduct extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }

    public void destroy() {
    }
}