package models;

public class OrderDetail {
    private String IdOrderDetail;
    private String IdOrder;
    private String IdProductDetail;
    private int number;

    public OrderDetail(String idOrderDetail, String idOrder, String idProductDetail, int number) {
        IdOrderDetail = idOrderDetail;
        IdOrder = idOrder;
        IdProductDetail = idProductDetail;
        this.number = number;
    }

    public String getIdOrderDetail() {
        return IdOrderDetail;
    }

    public void setIdOrderDetail(String idOrderDetail) {
        IdOrderDetail = idOrderDetail;
    }

    public String getIdOrder() {
        return IdOrder;
    }

    public void setIdOrder(String idOrder) {
        IdOrder = idOrder;
    }

    public String getIdProductDetail() {
        return IdProductDetail;
    }

    public void setIdProductDetail(String idProductDetail) {
        IdProductDetail = idProductDetail;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }
}
