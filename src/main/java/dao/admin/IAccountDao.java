package dao.admin;

import models.UserTot;

import java.sql.SQLException;
import java.util.List;

public interface IAccountDao {
    List<UserTot> getListAccount() throws SQLException;
    public boolean deleteAccount(String id);
}
