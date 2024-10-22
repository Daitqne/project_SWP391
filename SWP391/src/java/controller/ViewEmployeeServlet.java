package controller;

import dao.EmployeeDAO;
import model.Employee;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class ViewEmployeeServlet extends HttpServlet {
    private EmployeeDAO employeeDAO;

    @Override
    public void init() {
        employeeDAO = new EmployeeDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pageStr = request.getParameter("page");
        int page = pageStr == null ? 1 : Integer.parseInt(pageStr);
        int recordsPerPage = 5;

        List<Employee> employees = employeeDAO.getEmployeesByPage((page - 1) * recordsPerPage, recordsPerPage);
        int totalRecords = employeeDAO.getTotalEmployees();
        int totalPages = (int) Math.ceil((double) totalRecords / recordsPerPage);
        request.setAttribute("employeeList", employees);
        request.setAttribute("totalPages", totalPages);
        request.setAttribute("currentPage", page);
        request.getRequestDispatcher("/views/employees.jsp").forward(request, response);
    }
}
