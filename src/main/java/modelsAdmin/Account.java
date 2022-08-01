package modelsAdmin;

public class Account {
    private String accountId;
    private String user;
    private String fullName;
    private String dateBorn;
    private String email;
    private String phoneNumber;
    private String address;

    public Account() {}

    public Account(String accountId, String user, String fullName, String dateBorn, String email, String phoneNumber, String address) {
        this.accountId = accountId;
        this.user = user;
        this.fullName = fullName;
        this.dateBorn = dateBorn;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.address = address;
    }

    public String getAccountId() {
        return accountId;
    }

    public void setAccountId(String accountId) {
        this.accountId = accountId;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getDateBorn() {
        return dateBorn;
    }

    public void setDateBorn(String dateBorn) {
        this.dateBorn = dateBorn;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
