package com.example.migrateproject.model;

public class Image {
    private int img_id;
    private String img_description;
    private String img;
    private int product_id;

    public Image(int img_id, String img_description, String img, int product_id) {
        this.img_id = img_id;
        this.img_description = img_description;
        this.img = img;
        this.product_id = product_id;
    }
    public int getImg_id() {
        return img_id;
    }
    public void setImg_id(int img_id) {
        this.img_id = img_id;
    }
    public String getImg_description() {
        return img_description;
    }
    public void setImg_description(String img_description) {
        this.img_description = img_description;
    }
    public String getImg() {
        return img;
    }
    public void setImg(String img) {
        this.img = img;
    }
    public int getProduct_id() {
        return product_id;
    }
    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

}
