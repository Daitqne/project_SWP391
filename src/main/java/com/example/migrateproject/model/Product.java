package com.example.migrateproject.model;

public class Product {
    private int productId;
    private String productName;
    private int regionId;
    private int automakerId;
    private int quantity;
    private String linkVideo;
    private float price;
    private String description;

    public Product(int productId, String productName, int regionId, int automakerId, int quantity, String linkVideo, float price, String description) {
        this.productId = productId;
        this.productName = productName;
        this.regionId = regionId;
        this.automakerId = automakerId;
        this.quantity = quantity;
        this.linkVideo = linkVideo;
        this.price = price;
        this.description = description;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Product() {
    }

    public Product(int productId, String productName, int regionId, int automakerId, int quantity, String linkVideo, float price) {
        this.productId = productId;
        this.productName = productName;
        this.regionId = regionId;
        this.automakerId = automakerId;
        this.quantity = quantity;
        this.linkVideo = linkVideo;
        this.price = price;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getRegionId() {
        return regionId;
    }

    public void setRegionId(int regionId) {
        this.regionId = regionId;
    }

    public int getAutomakerId() {
        return automakerId;
    }

    public void setAutomakerId(int automakerId) {
        this.automakerId = automakerId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getLinkVideo() {
        return linkVideo;
    }

    public void setLinkVideo(String linkVideo) {
        this.linkVideo = linkVideo;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }
}
