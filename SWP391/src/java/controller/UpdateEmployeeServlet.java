package controller;

import dao.EmployeeDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Employee;
import java.io.IOException;

@WebServlet(name = "UpdateEmployeeServlet", urlPatterns = {"/UpdateEmployeeServlet"})
public class UpdateEmployeeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Lấy dữ liệu nhân viên từ DB hoặc request trước đó
        int employeeId = Integer.parseInt(request.getParameter("id"));
        EmployeeDAO employeeDAO = new EmployeeDAO();
        Employee employee = employeeDAO.getEmployeesByID(employeeId);

        // Đặt employee và departments vào request scope
        request.setAttribute("employee", employee);
        request.setAttribute("departments", employeeDAO.getAllDepartments());

        // Chuyển đến trang JSP để hiển thị form update
        request.getRequestDispatcher("views/updateEmp.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        EmployeeDAO employeeDAO = new EmployeeDAO();
        
        // Lấy dữ liệu từ form
        int employeeId = Integer.parseInt(request.getParameter("employeeId"));
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        int departmentId = Integer.parseInt(request.getParameter("departmentId"));

        // Kiểm tra trùng số điện thoại
        if (employeeDAO.isPhoneExists(phone) && !phone.equals(employeeDAO.getEmployeesByID(employeeId).getPhone())) {
            request.setAttribute("error", "Phone number already exists.");
            request.getRequestDispatcher("views/updateEmployee.jsp").forward(request, response);
            return;
        }

        // Kiểm tra trùng email
        if (employeeDAO.isEmailExists(email) && !email.equals(employeeDAO.getEmployeesByID(employeeId).getEmail())) {
            request.setAttribute("error", "Email already exists.");
            request.getRequestDispatcher("views/updateEmployee.jsp").forward(request, response);
            return;
        }

        // Cập nhật thông tin nhân viên
        Employee employee = new Employee();
        employee.setEmployeeId(employeeId);
        employee.setFirstName(firstName);
        employee.setLastName(lastName);
        employee.setPhone(phone);
        employee.setEmail(email);
        employee.setDepartmentId(departmentId);

        employeeDAO.updateEmployee(employee);
        request.setAttribute("employeeList", employeeDAO.getAllEmployees());
        // Thông báo thành công và chuyển hướng
        request.setAttribute("message", "Employee updated successfully!");
        request.getRequestDispatcher("views/employees.jsp").forward(request, response);
    }
}
