package com.example.migrateproject.controller;

import java.io.*;

import com.example.migrateproject.model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "updateAccountServlet", value = "/updateAccount-servlet")
public class updateAccount extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getRequestDispatcher("/hondaotog3.com/updateAccount.jsp").forward(request,response);
    }

    public void destroy() {
    }
}