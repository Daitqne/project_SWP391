package org.example.swp391.repository;

import org.example.swp391.entity.Account;
import org.example.swp391.entity.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Long> {
    Employee findByAccount(Account account);
}
