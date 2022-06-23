package models;

public class Favourite {
    private String IdAccount;
    private String IdProduct;

    public Favourite(String idAccount, String idProduct) {
        IdAccount = idAccount;
        IdProduct = idProduct;
    }

    public String getIdAccount() {
        return IdAccount;
    }

    public void setIdAccount(String idAccount) {
        IdAccount = idAccount;
    }

    public String getIdProduct() {
        return IdProduct;
    }

    public void setIdProduct(String idProduct) {
        IdProduct = idProduct;
    }
}
