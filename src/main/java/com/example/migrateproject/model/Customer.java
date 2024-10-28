package com.example.migrateproject.model;

import java.sql.Date;

public class Customer {
    private int customer_id;
    private int user_id;
    private String fristName;
    private String lastName;
    private String phone;
    private String email;
    private String address;
    private Date create_at;

    public Customer(int customer_id, int user_id, String fristName, String lastName, String phone, String email, String address, Date create_at) {
        this.customer_id = customer_id;
        this.user_id = user_id;
        this.fristName = fristName;
        this.lastName = lastName;
        this.phone = phone;
        this.email = email;
        this.address = address;
        this.create_at = create_at;
    }

    public Customer() {
    }

    public int getCustomer_id() {
        return customer_id;
    }

    public void setCustomer_id(int customer_id) {
        this.customer_id = customer_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getFristName() {
        return fristName;
    }

    public void setFristName(String fristName) {
        this.fristName = fristName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getCreate_at() {
        return create_at;
    }

    public void setCreate_at(Date create_at) {
        this.create_at = create_at;
    }
}
