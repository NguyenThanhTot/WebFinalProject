package models;

public class Product {
    private String IdProduct;
    private String NameProduct;
    private String Category;
    private String SubCategory;
    private double Price;
    private double PriceDegree;
    private String Description;


    public Product(String idProduct, String nameProduct, String category, String subCategory, double price, double priceDegree, String description) {
        IdProduct = idProduct;
        NameProduct = nameProduct;
        Category = category;
        SubCategory = subCategory;
        Price = price;
        PriceDegree = priceDegree;
        Description = description;
    }

    public String getIdProduct() {
        return IdProduct;
    }

    public void setIdProduct(String idProduct) {
        IdProduct = idProduct;
    }

    public String getNameProduct() {
        return NameProduct;
    }

    public void setNameProduct(String nameProduct) {
        NameProduct = nameProduct;
    }

    public String getCategory() {
        return Category;
    }

    public void setCategory(String category) {
        Category = category;
    }

    public String getSubCategory() {
        return SubCategory;
    }

    public void setSubCategory(String subCategory) {
        SubCategory = subCategory;
    }

    public double getPrice() {
        return Price;
    }

    public void setPrice(double price) {
        Price = price;
    }

    public double getPriceDegree() {
        return PriceDegree;
    }

    public void setPriceDegree(double priceDegree) {
        PriceDegree = priceDegree;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }
}
