/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.example.migrateproject.controller;

import com.example.migrateproject.dao.EmployeeDAO;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import com.example.migrateproject.model.Employee;

/**
 *
 * @author DUC MINH
 */
@WebServlet("/EmployeeListServlet")
public class EmployeeListServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private EmployeeDAO employeeDAO;

    public void init() {
        employeeDAO = new EmployeeDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy số trang hiện tại và số bản ghi mỗi trang
        int page = 1;
        int recordsPerPage = 5; // Bạn có thể tùy chỉnh số bản ghi trên mỗi trang
        if (request.getParameter("page") != null) {
            page = Integer.parseInt(request.getParameter("page"));
        }

        // Tính toán offset và truy vấn dữ liệu phân trang
        int offset = (page - 1) * recordsPerPage;
        List<Employee> employees = employeeDAO.getEmployeesByPage(offset, recordsPerPage);
        int totalEmployees = employeeDAO.getTotalEmployees();

        // Tính toán tổng số trang
        int totalPages = (int) Math.ceil((double) totalEmployees / recordsPerPage);

        // Set các thuộc tính cho JSP
        request.setAttribute("employeeList", employees);
        request.setAttribute("currentPage", page);
        request.setAttribute("totalPages", totalPages);

        // Chuyển tiếp đến JSP
        RequestDispatcher dispatcher = request.getRequestDispatcher("views/employees.jsp");
        dispatcher.forward(request, response);
    }
}
