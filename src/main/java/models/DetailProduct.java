package models;

public class DetailProduct {
    private String IdProductDetail;
    private String IdProduct;
    private String IdColor;
    private String IdSize;

    public DetailProduct(String idProductDetail, String idProduct, String idColor, String idSize) {
        IdProductDetail = idProductDetail;
        IdProduct = idProduct;
        IdColor = idColor;
        IdSize = idSize;
    }

    public String getIdProductDetail() {
        return IdProductDetail;
    }

    public void setIdProductDetail(String idProductDetail) {
        IdProductDetail = idProductDetail;
    }

    public String getIdProduct() {
        return IdProduct;
    }

    public void setIdProduct(String idProduct) {
        IdProduct = idProduct;
    }

    public String getIdColor() {
        return IdColor;
    }

    public void setIdColor(String idColor) {
        IdColor = idColor;
    }

    public String getIdSize() {
        return IdSize;
    }

    public void setIdSize(String idSize) {
        IdSize = idSize;
    }
}
