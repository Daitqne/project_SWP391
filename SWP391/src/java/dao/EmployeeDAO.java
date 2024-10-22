/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dal.IEmployee;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Department;
import model.Employee;

/**
 *
 * @author DUC MINH
 */
public class EmployeeDAO extends DBContext implements IEmployee {

    @Override
    public List<Employee> getAllEmployees() {
        List<Employee> employees = new ArrayList<>();
        String query = "SELECT e.employee_id, e.first_name, e.last_name, e.phone, e.email, d.department_name "
                + "FROM Employee e "
                + "LEFT JOIN Department d ON e.department_id = d.department_id";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Employee emp = new Employee();
                emp.setEmployeeId(rs.getInt("employee_id"));
                emp.setFirstName(rs.getString("first_name"));
                emp.setLastName(rs.getString("last_name"));
                emp.setPhone(rs.getString("phone"));
                emp.setEmail(rs.getString("email"));
                emp.setDepartmentName(rs.getString("department_name"));
                employees.add(emp);
            }
        } catch (SQLException ex) {
            System.out.println("ex");
        }
        return employees;
    }

    @Override
    public void addEmployee(Employee employee) {
        String query = "INSERT INTO Employee (user_id, first_name, last_name, phone, email, department_id) VALUES (null, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
//            stmt.setInt(1, employee.getUserId());
            stmt.setString(1, employee.getFirstName());
            stmt.setString(2, employee.getLastName());
            stmt.setString(3, employee.getPhone());
            stmt.setString(4, employee.getEmail());
            stmt.setInt(5, employee.getDepartmentId());
            stmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println("e");
        }
    }

    @Override
    public void updateEmployee(Employee employee) {
        String query = "UPDATE Employee SET first_name = ?, last_name = ?, phone = ?, email = ?, department_id = ? WHERE employee_id = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, employee.getFirstName());
            stmt.setString(2, employee.getLastName());
            stmt.setString(3, employee.getPhone());
            stmt.setString(4, employee.getEmail());
            stmt.setInt(5, employee.getDepartmentId());
            stmt.setInt(6, employee.getEmployeeId());
            stmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println("e");
        }
    }

    @Override
    public void deleteEmployee(int employeeId) {
        String query = "DELETE FROM Employee WHERE employee_id = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setInt(1, employeeId);
            stmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println("e");
        }
    }

    public static void main(String[] args) {
        EmployeeDAO employeeDAO = new EmployeeDAO();

        // 1. Test getAllEmployees()
        System.out.println("Testing getAllDepartments()...");
        List<Employee> employees = employeeDAO.getAllEmployees();
        List<Department> departments = employeeDAO.getAllDepartments();
        for (Department dept : departments) {
            System.out.println(dept);
        }

        // 2. Test addEmployee()
        System.out.println("\nTesting addEmployee()...");
        Employee newEmployee = new Employee();
//        newEmployee.setUserId(1001);  // Assuming user_id is unique
        newEmployee.setFirstName("John");
        newEmployee.setLastName("Doe");
        newEmployee.setPhone("1234567890");
        newEmployee.setEmail("john.doe@example.com");
        newEmployee.setDepartmentId(1);  // Assuming department_id = 1 exists
        employeeDAO.addEmployee(newEmployee);
        System.out.println("Employee added!");

        // 3. Test updateEmployee()
        System.out.println("\nTesting updateEmployee()...");
        if (!employees.isEmpty()) {
            Employee empToUpdate = employees.get(0);  // Update the first employee
            empToUpdate.setFirstName("UpdatedFirstName");
            empToUpdate.setLastName("UpdatedLastName");
            employeeDAO.updateEmployee(empToUpdate);
            System.out.println("Employee updated!");
        } else {
            System.out.println("No employees to update.");
        }

        // 4. Test deleteEmployee()
//        System.out.println("\nTesting deleteEmployee()...");
//        if (!employees.isEmpty()) {
//            int employeeIdToDelete = employees.get(0).getEmployeeId();
//            employeeDAO.deleteEmployee(employeeIdToDelete);
//            System.out.println("Employee with ID " + employeeIdToDelete + " deleted!");
//        } else {
//            System.out.println("No employees to delete.");
//        }
        // 5. Test searchEmployees()
        System.out.println("\nTesting searchEmployees()...");
        String searchQuery = "linh";  // Search for employees with first or last name containing "John"
        List<Employee> searchedEmployees = employeeDAO.searchEmployees(searchQuery);
        for (Employee emp : searchedEmployees) {
            System.out.println(emp);
        }

        // 6. Test getTotalEmployees()
        System.out.println("\nTesting getTotalEmployees()...");
        int totalEmployees = employeeDAO.getTotalEmployees();
        System.out.println("Total number of employees: " + totalEmployees);

        // 7. Test getEmployeesByPage()
        System.out.println("\nTesting getEmployeesByPage()...");
        int page = 1;
        int recordsPerPage = 5;
        List<Employee> pagedEmployees = employeeDAO.getEmployeesByPage((page - 1) * recordsPerPage, recordsPerPage);
        for (Employee emp : pagedEmployees) {
            System.out.println(emp);
        }
    }

    @Override
    public int getTotalEmployees() {
        String query = "SELECT COUNT(*) FROM Employee";
        try (PreparedStatement ps = connection.prepareStatement(query); ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    // Phương thức tìm kiếm nhân viên theo tên
    @Override
    public List<Employee> searchEmployees(String query) {
        String sql = "SELECT e.employee_id, e.first_name, e.last_name, e.phone, e.email, d.department_name "
                + "FROM Employee e LEFT JOIN Department d ON e.department_id = d.department_id "
                + "WHERE e.first_name LIKE ? OR e.last_name LIKE ?";

        List<Employee> employees = new ArrayList<>();
        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, "%" + query + "%");
            ps.setString(2, "%" + query + "%");
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Employee emp = new Employee();
                    emp.setEmployeeId(rs.getInt("employee_id"));
                    emp.setFirstName(rs.getString("first_name"));
                    emp.setLastName(rs.getString("last_name"));
                    emp.setPhone(rs.getString("phone"));
                    emp.setEmail(rs.getString("email"));
                    emp.setDepartmentName(rs.getString("department_name"));
                    employees.add(emp);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return employees;
    }

    // Phương thức lọc nhân viên theo phòng ban
    @Override
    public List<Employee> filterEmployeesByDepartment(String departmentId) {
        String sql = "SELECT e.employee_id, e.first_name, e.last_name, e.phone, e.email, d.department_name "
                + "FROM Employee e LEFT JOIN Department d ON e.department_id = d.department_id "
                + "WHERE e.department_id = ?";

        List<Employee> employees = new ArrayList<>();
        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setInt(1, Integer.parseInt(departmentId));
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Employee emp = new Employee();
                    emp.setEmployeeId(rs.getInt("employee_id"));
                    emp.setFirstName(rs.getString("first_name"));
                    emp.setLastName(rs.getString("last_name"));
                    emp.setPhone(rs.getString("phone"));
                    emp.setEmail(rs.getString("email"));
                    emp.setDepartmentName(rs.getString("department_name"));
                    employees.add(emp);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return employees;
    }

    // Phương thức tìm kiếm và lọc kết hợp
    @Override
    public List<Employee> searchAndFilterEmployees(String query, String departmentId) {
        String sql = "SELECT e.employee_id, e.first_name, e.last_name, e.phone, e.email, d.department_name "
                + "FROM Employee e LEFT JOIN Department d ON e.department_id = d.department_id "
                + "WHERE (e.first_name LIKE ? OR e.last_name LIKE ?) AND e.department_id = ?";

        List<Employee> employees = new ArrayList<>();
        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, "%" + query + "%");
            ps.setString(2, "%" + query + "%");
            ps.setInt(3, Integer.parseInt(departmentId));
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Employee emp = new Employee();
                    emp.setEmployeeId(rs.getInt("employee_id"));
                    emp.setFirstName(rs.getString("first_name"));
                    emp.setLastName(rs.getString("last_name"));
                    emp.setPhone(rs.getString("phone"));
                    emp.setEmail(rs.getString("email"));
                    emp.setDepartmentName(rs.getString("department_name"));
                    employees.add(emp);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return employees;
    }

    @Override

    public List<Employee> getEmployeesByPage(int offset, int recordsPerPage) {
        String query = "SELECT e.employee_id, e.first_name, e.last_name, e.phone, e.email, d.department_name "
                + "FROM Employee e LEFT JOIN Department d ON e.department_id = d.department_id "
                + "ORDER BY e.employee_id OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";
        List<Employee> employees = new ArrayList<>();

        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, offset);
            ps.setInt(2, recordsPerPage);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Employee emp = new Employee();
                    emp.setEmployeeId(rs.getInt("employee_id"));
                    emp.setFirstName(rs.getString("first_name"));
                    emp.setLastName(rs.getString("last_name"));
                    emp.setPhone(rs.getString("phone"));
                    emp.setEmail(rs.getString("email"));
                    emp.setDepartmentName(rs.getString("department_name"));
                    employees.add(emp);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return employees;
    }

    @Override
    public boolean isEmailExists(String email) {
        String query = "SELECT * FROM Employee WHERE email = ?";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean isPhoneExists(String phone) {
        String query = "SELECT * FROM Employee WHERE phone = ?";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setString(1, phone);
            ResultSet rs = ps.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public Employee getEmployeesByID(int employeeId) {
        String query = "SELECT e.employee_id, e.first_name, e.last_name, e.phone, e.email, d.department_name "
                + "FROM Employee e "
                + "LEFT JOIN Department d ON e.department_id = d.department_id where e.employee_id=?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, employeeId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Employee emp = new Employee();
                emp.setEmployeeId(rs.getInt("employee_id"));
                emp.setFirstName(rs.getString("first_name"));
                emp.setLastName(rs.getString("last_name"));
                emp.setPhone(rs.getString("phone"));
                emp.setEmail(rs.getString("email"));
                emp.setDepartmentName(rs.getString("department_name"));
                return emp;
            }
        } catch (SQLException ex) {
            System.out.println("ex");
        }
        return null;
    }

    @Override
    public List<Department> getAllDepartments() {
        List<Department> departments = new ArrayList<>();
        String query = "SELECT department_id, department_name FROM Department";

        try (PreparedStatement ps = connection.prepareStatement(query); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Department dept = new Department();
                dept.setDepartmentId(rs.getInt("department_id"));
                dept.setDepartmentName(rs.getString("department_name"));
                departments.add(dept);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return departments;
    }

}
