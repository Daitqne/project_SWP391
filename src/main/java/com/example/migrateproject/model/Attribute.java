package com.example.migrateproject.model;

public class Attribute {
    private int attributeId;
    private String attributeName;
    private String attributeValue;
    private String attributeImg;

    public Attribute(int attributeId, String attributeName, String attributeValue, String attributeImg) {
        this.attributeId = attributeId;
        this.attributeName = attributeName;
        this.attributeValue = attributeValue;
        this.attributeImg = attributeImg;
    }

    public Attribute() {
    }

    public int getAttributeId() {
        return attributeId;
    }

    public void setAttributeId(int attributeId) {
        this.attributeId = attributeId;
    }

    public String getAttributeName() {
        return attributeName;
    }

    public void setAttributeName(String attributeName) {
        this.attributeName = attributeName;
    }

    public String getAttributeValue() {
        return attributeValue;
    }

    public void setAttributeValue(String attributeValue) {
        this.attributeValue = attributeValue;
    }

    public String getAttributeImg() {
        return attributeImg;
    }

    public void setAttributeImg(String attributeImg) {
        this.attributeImg = attributeImg;
    }
}
