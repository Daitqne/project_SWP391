/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.example.migrateproject.controller;

import com.example.migrateproject.dao.EmployeeDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author DUC MINH
 */
@WebServlet(name = "CheckDuplicateServlet", urlPatterns = {"/checkDuplicate"})
public class CheckDuplicateServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EmployeeDAO employeeDAO = new EmployeeDAO();
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        boolean isEmailExists = email != null && employeeDAO.isEmailExists(email);
        boolean isPhoneExists = phone != null && employeeDAO.isPhoneExists(phone);

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write("{\"emailExists\": " + isEmailExists + ", \"phoneExists\": " + isPhoneExists + "}");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
