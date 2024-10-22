package controller;

import dao.EmployeeDAO;
import model.Employee;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import model.Department;

public class AddEmployeeServlet extends HttpServlet {

    private EmployeeDAO employeeDAO;

    @Override
    public void init() {
        employeeDAO = new EmployeeDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Fetch all departments
        List<Department> departments = employeeDAO.getAllDepartments();

        // Set the departments as a request attribute
        request.setAttribute("departments", departments);

        // Forward to the add employee JSP page
        request.getRequestDispatcher("views/addemp.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String departmentId = request.getParameter("departmentId");
        if (departmentId == null || departmentId.isEmpty()) {
                // Trả về lỗi hoặc yêu cầu chọn phòng ban
                request.setAttribute("error", "Vui lòng chọn phòng ban.");
                // Điều hướng về trang trước đó
                request.getRequestDispatcher("views/addemp.jsp").forward(request, response);
                return;
            }
        // Kiểm tra email hoặc số điện thoại trùng lặp
        if (employeeDAO.isEmailExists(email)) {
            request.setAttribute("error", "Email đã tồn tại.");
            doGet(request, response);  // Tải lại form với danh sách phòng ban và hiển thị lỗi
        } else if (employeeDAO.isPhoneExists(phone)) {
            request.setAttribute("error", "Số điện thoại đã tồn tại.");
            doGet(request, response);  // Tải lại form với danh sách phòng ban và hiển thị lỗi
        } else {
            // Thêm nhân viên mới
            Employee newEmployee = new Employee();
            newEmployee.setFirstName(request.getParameter("firstName"));
            newEmployee.setLastName(request.getParameter("lastName"));
            newEmployee.setPhone(phone);
            newEmployee.setEmail(email);
            newEmployee.setDepartmentId(Integer.parseInt(departmentId));
            

            employeeDAO.addEmployee(newEmployee);
            response.sendRedirect("ViewEmployeeServlet");  // Chuyển hướng đến trang danh sách nhân viên
        }
    }

}
