package modelsAdmin;

public class OrderDetailProduct {
    private String od_dt_id;
    private Order oder;
    private Product_detail product_detail;
    private int quantity;

    public OrderDetailProduct() {
    }

    public OrderDetailProduct(String od_dt_id, Order oder, Product_detail product_detail, int quantity) {
        this.od_dt_id = od_dt_id;
        this.oder = oder;
        this.product_detail = product_detail;
        this.quantity = quantity;
    }

    public double getProvisional(){
        return quantity * this.product_detail.getProduct().getPriceDesc();
    }

    public String getOd_dt_id() {
        return od_dt_id;
    }

    public void setOd_dt_id(String od_dt_id) {
        this.od_dt_id = od_dt_id;
    }

    public Order getOder() {
        return oder;
    }

    public void setOder(Order oder) {
        this.oder = oder;
    }

    public Product_detail getProduct_detail() {
        return product_detail;
    }

    public void setProduct_detail(Product_detail product_detail) {
        this.product_detail = product_detail;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
