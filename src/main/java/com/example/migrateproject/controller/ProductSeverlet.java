package com.example.migrateproject.controller;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "ProductSeverletServlet", value = "/ProductSeverlet")
public class ProductSeverlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getRequestDispatcher("hondaotog3.com/san-pham.jsp").forward(request,response);
    }

    public void destroy() {
    }
}