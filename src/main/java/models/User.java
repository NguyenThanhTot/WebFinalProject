package models;

import java.lang.reflect.Modifier;
import java.time.DateTimeException;

public class User {
    private String UserId;
    private String Name;
    private String UserName;
    private String Password;
    private int PermissionId;
    private String CreateDate;
    private String CreateBy;
    private DateTimeException ModifiedDate;
    private String ModifiedBy;


    public String getUserId() {
        return UserId;
    }

    public void setUserId(String userId) {
        UserId = userId;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String userName) {
        UserName = userName;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public int getPermissionId() {
        return PermissionId;
    }

    public void setPermissionId(int permissionId) {
        PermissionId = permissionId;
    }

    public String getCreateDate() {
        return CreateDate;
    }

    public void setCreateDate(String createDate) {
        CreateDate = createDate;
    }

    public String getCreateBy() {
        return CreateBy;
    }

    public void setCreateBy(String createBy) {
        CreateBy = createBy;
    }

    public DateTimeException getModifiedDate() {
        return ModifiedDate;
    }

    public void setModifiedDate(DateTimeException modifiedDate) {
        ModifiedDate = modifiedDate;
    }

    public String getModifiedBy() {
        return ModifiedBy;
    }

    public void setModifiedBy(String modifiedBy) {
        ModifiedBy = modifiedBy;
    }
}
