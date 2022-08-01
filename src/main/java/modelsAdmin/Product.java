package modelsAdmin;

public class Product {
    private String idProduct;
    private String nameProduct;
    private Categories_child categories_child;
    private double cost;
    private double price;
    private double priceDesc;
    private String description;

    public Product() {
    }

    public Product(String idProduct, String nameProduct, Categories_child categories_child, double cost, double price, double priceDesc, String description) {
        this.idProduct = idProduct;
        this.nameProduct = nameProduct;
        this.categories_child = categories_child;
        this.cost = cost;
        this.price = price;
        this.priceDesc = priceDesc;
        this.description = description;
    }

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

    public Categories_child getCategories_child() {
        return categories_child;
    }

    public void setCategories_child(Categories_child categories_child) {
        this.categories_child = categories_child;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
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
