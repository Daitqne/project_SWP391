package com.example.migrateproject.model;

public class CarColor {
    private int colorId;
    private String colorName;
    private String colorImg;

    public CarColor(int colorId, String colorName, String colorImg) {
        this.colorId = colorId;
        this.colorName = colorName;
        this.colorImg = colorImg;
    }

    public CarColor() {
    }

    public int getColorId() {
        return colorId;
    }

    public void setColorId(int colorId) {
        this.colorId = colorId;
    }

    public String getColorName() {
        return colorName;
    }

    public void setColorName(String colorName) {
        this.colorName = colorName;
    }

    public String getColorImg() {
        return colorImg;
    }

    public void setColorImg(String colorImg) {
        this.colorImg = colorImg;
    }

    @Override
    public String toString() {
        return "CarColor{" +
                "colorId=" + colorId +
                ", colorName='" + colorName + '\'' +
                ", colorImg='" + colorImg + '\'' +
                '}';
    }
}
