package com.example.migrateproject.controller;

import com.example.migrateproject.dao.EmployeeDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteEmployeeServlet extends HttpServlet {

    private EmployeeDAO employeeDAO;

    @Override
    public void init() {
        employeeDAO = new EmployeeDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            employeeDAO.deleteEmployee(id);
            response.sendRedirect("ViewEmployeeServlet");
        } catch (NumberFormatException e) {
            
        }

    }
}
