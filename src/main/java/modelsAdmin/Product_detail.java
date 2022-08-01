package modelsAdmin;

public class Product_detail {
    private String pro_dt_id;
    private Product product;
    private Color color;
    private Size size;

    public Product_detail() {
    }

    public Product_detail(String pro_dt_id, Product product, Color color, Size size) {
        this.pro_dt_id = pro_dt_id;
        this.product = product;
        this.color = color;
        this.size = size;
    }

    public String getPro_dt_id() {
        return pro_dt_id;
    }

    public void setPro_dt_id(String pro_dt_id) {
        this.pro_dt_id = pro_dt_id;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Color getColor() {
        return color;
    }

    public void setColor(Color color) {
        this.color = color;
    }

    public Size getSize() {
        return size;
    }

    public void setSize(Size size) {
        this.size = size;
    }
}
