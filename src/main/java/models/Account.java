package models;

public class Account {
    private String IdAccount;
    private String UserName;
    private String PassWord;
    private String Name;
    private String Email;
    private String Phone;

    public Account(String idAccount, String userName, String passWord, String name, String email, String phone) {
        IdAccount = idAccount;
        UserName = userName;
        PassWord = passWord;
        Name = name;
        Email = email;
        Phone = phone;
    }

    public String getIdAccount() {
        return IdAccount;
    }

    public void setIdAccount(String idAccount) {
        IdAccount = idAccount;
    }

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String userName) {
        UserName = userName;
    }

    public String getPassWord() {
        return PassWord;
    }

    public void setPassWord(String passWord) {
        PassWord = passWord;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String phone) {
        Phone = phone;
    }
}
