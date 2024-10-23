package dto;

public class GetTopProductsWithFirstAttribute {
    private int productId;
    private String productName;
    private double price;
    private String attributeImg;

    public GetTopProductsWithFirstAttribute(int productId, String productName, double price, String attributeImg) {
        this.productId = productId;
        this.productName = productName;
        this.price = price;
        this.attributeImg = attributeImg;
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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getAttributeImg() {
        return attributeImg;
    }

    public void setAttributeImg(String attributeImg) {
        this.attributeImg = attributeImg;
    }
}
