package models;
public class Cart {
    private String IdCart;
    private String IdProductDetail;
    private int Number;

    public Cart(String idCart, String idProductDetail, int number) {
        IdCart = idCart;
        IdProductDetail = idProductDetail;
        Number = number;
    }

    public String getIdCart() {
        return IdCart;
    }

    public void setIdCart(String idCart) {
        IdCart = idCart;
    }

    public String getIdProductDetail() {
        return IdProductDetail;
    }

    public void setIdProductDetail(String idProductDetail) {
        IdProductDetail = idProductDetail;
    }

    public int getNumber() {
        return Number;
    }

    public void setNumber(int number) {
        Number = number;
    }
}
