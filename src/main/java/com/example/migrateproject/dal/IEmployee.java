/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.example.migrateproject.dal;

import java.util.List;
import model.Department;
import com.example.migrateproject.model.Employee;

/**
 *
 * @author DUC MINH
 */
public interface IEmployee {
    List<Employee> getAllEmployees();
    void addEmployee(Employee employee);
    void updateEmployee(Employee employee);
    void deleteEmployee(int employeeId);
    List<Employee> getEmployeesByPage(int offset, int recordsPerPage);
    int getTotalEmployees();
    List<Employee> searchEmployees(String query);
    List<Employee> filterEmployeesByDepartment(String departmentId);
    List<Employee> searchAndFilterEmployees(String query, String departmentId);
    boolean isEmailExists(String email);
    boolean isPhoneExists(String phone);
    Employee getEmployeesByID(int employeeId);
    List<Department> getAllDepartments();
}
