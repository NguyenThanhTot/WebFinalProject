package models;

public class Product {
    private String idProduct;
    private String nameProduct;
    private String category;
    private String subCategory;
    private double price;


    private double priceDesc;
    private String description;

    public Product(String idProduct, String nameProduct, String category, String subCategory, double price, double priceDesc, String description) {
        this.idProduct = idProduct;
        this.nameProduct = nameProduct;
        this.category = category;
        this.subCategory = subCategory;
        this.price = price;
        this.priceDesc = priceDesc;
        this.description = description;
    }
    public Product(){}

    public String getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(String idProduct) {
        this.idProduct = idProduct;
    }

    public String getNameProduct() {
        return nameProduct;
    }

    public void setNameProduct(String nameProduct) {
        this.nameProduct = nameProduct;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getSubCategory() {
        return subCategory;
    }

    public void setSubCategory(String subCategory) {
        this.subCategory = subCategory;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getPriceDesc() {
        return priceDesc;
    }

    public void setPriceDesc(double priceDesc) {
        this.priceDesc = priceDesc;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}




