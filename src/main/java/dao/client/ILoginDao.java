package dao.client;

import models.Account;
import models.Product;

import java.sql.SQLException;
import java.util.List;

public interface ILoginDao {
//    List<Account> getListLogin() throws SQLException;
    public Account login(String username, String password);
}
