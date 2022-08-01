package modelsAdmin;

public class Order {
    private String idOrder;
    private String idAccount;
    private String orderTime;
    private String cancelTime;
    private String finishTime;
    private String status;

    public Order() {
    }

    public Order(String idOrder, String idAccount, String orderTime, String cancelTime, String finishTime, String status) {
        this.idOrder = idOrder;
        this.idAccount = idAccount;
        this.orderTime = orderTime;
        this.cancelTime = cancelTime;
        this.finishTime = finishTime;
        this.status = status;
    }

    public String getIdOrder() {
        return idOrder;
    }

    public void setIdOrder(String idOrder) {
        this.idOrder = idOrder;
    }

    public String getIdAccount() {
        return idAccount;
    }

    public void setIdAccount(String idAccount) {
        this.idAccount = idAccount;
    }

    public String getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(String orderTime) {
        this.orderTime = orderTime;
    }

    public String getCancelTime() {
        return cancelTime;
    }

    public void setCancelTime(String cancelTime) {
        this.cancelTime = cancelTime;
    }

    public String getFinishTime() {
        return finishTime;
    }

    public void setFinishTime(String finishTime) {
        this.finishTime = finishTime;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
