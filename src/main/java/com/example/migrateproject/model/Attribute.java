package com.example.migrateproject.model;

public class Attribute {
    private String attribute_name;
    private String attribute_value;
    private String attribute_img;

    public Attribute(String attribute_name, String attribute_value, String attribute_img) {
        this.attribute_name = attribute_name;
        this.attribute_value = attribute_value;
        this.attribute_img = attribute_img;
    }

    public String getAttribute_name() {
        return attribute_name;
    }
    public void setAttribute_name(String attribute_name) {
        this.attribute_name = attribute_name;
    }

    public String getAttribute_value() {
        return attribute_value;
    }
    public void setAttribute_value(String attribute_value) {
        this.attribute_value = attribute_value;
    }

    public String getAttribute_img() {
        return attribute_img;
    }
    public void setAttribute_img(String attribute_img) {
        this.attribute_img = attribute_img;
    }
}
