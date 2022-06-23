package models;
import java.util.Date;

public class Order {
    private String IdOrder;
    private String IdAccount;
    private String OrderTime;
    private String CancelTime;
    private String EndTime;


    public Order(String idOrder, String idAccount, String orderTime, String cancelTime, String endTime) {
        IdOrder = idOrder;
        IdAccount = idAccount;
        OrderTime = orderTime;
        CancelTime = cancelTime;
        EndTime = endTime;
    }

    public String getIdOrder() {
        return IdOrder;
    }

    public void setIdOrder(String idOrder) {
        IdOrder = idOrder;
    }

    public String getIdAccount() {
        return IdAccount;
    }

    public void setIdAccount(String idAccount) {
        IdAccount = idAccount;
    }

    public String getOrderTime() {
        return OrderTime;
    }

    public void setOrderTime(String orderTime) {
        OrderTime = orderTime;
    }

    public String getCancelTime() {
        return CancelTime;
    }

    public void setCancelTime(String cancelTime) {
        CancelTime = cancelTime;
    }

    public String getEndTime() {
        return EndTime;
    }

    public void setEndTime(String endTime) {
        EndTime = endTime;
    }
}
