package com.example.migrateproject.controller;

import com.example.migrateproject.dao.EmployeeDAO;
import com.example.migrateproject.model.Employee;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import model.Department;

public class SearchEmployeeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Lấy từ khóa tìm kiếm và mã phòng ban từ request
        String searchQuery = request.getParameter("search");
        String departmentId = request.getParameter("departmentId");

        EmployeeDAO employeeDAO = new EmployeeDAO();
        List<Employee> employeeList;

        // Kiểm tra các tiêu chí tìm kiếm và lọc
        if ((searchQuery == null || searchQuery.trim().isEmpty()) && 
            (departmentId == null || departmentId.trim().isEmpty())) {
            // Không có tìm kiếm hoặc lọc -> Trả về tất cả nhân viên
            employeeList = employeeDAO.getAllEmployees();
        } else if (searchQuery != null && !searchQuery.trim().isEmpty() &&
                   (departmentId == null || departmentId.trim().isEmpty())) {
            // Chỉ có tìm kiếm -> Tìm kiếm theo từ khóa
            employeeList = employeeDAO.searchEmployees(searchQuery);
        } else if ((searchQuery == null || searchQuery.trim().isEmpty()) &&
                   departmentId != null && !departmentId.trim().isEmpty()) {
            // Chỉ có lọc -> Lọc theo phòng ban
            employeeList = employeeDAO.filterEmployeesByDepartment(departmentId);
        } else {
            // Có cả tìm kiếm và lọc -> Kết hợp tìm kiếm và lọc
            employeeList = employeeDAO.searchAndFilterEmployees(searchQuery, departmentId);
        }

        // Kiểm tra nếu danh sách nhân viên rỗng, thêm thông báo
        if (employeeList.isEmpty()) {
            request.setAttribute("noResultMessage", "Không tìm thấy nhân viên phù hợp.");
        }

        // Lấy danh sách phòng ban để hiển thị trong dropdown lọc
        List<Department> departmentList = employeeDAO.getAllDepartments();
        request.setAttribute("departmentList", departmentList);

        // Đặt danh sách nhân viên vào request để truyền tới JSP
        request.setAttribute("employeeList", employeeList);

        // Forward kết quả tới JSP để hiển thị
        request.getRequestDispatcher("views/employees.jsp").forward(request, response);
    }
}
