package com.example.migrateproject.dal;

import com.example.migrateproject.model.Customer;

import java.util.ArrayList;

public interface ICustomer {
    ArrayList<Customer> getAllCustomer();
    Customer getCustomerByEmail(String email);
}
