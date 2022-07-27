package dao.client.implement;

import com.mysql.cj.xdevapi.PreparableStatement;
import dao.client.ILoginDao;
import dbConnect.DBConnect;
import models.Account;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LoginDao implements ILoginDao {
    Connection cnt = null;

    public LoginDao() {
        cnt = DBConnect.getConnect();
    }

    @Override
    public Account login(String username, String password) {
        try {
            PreparedStatement pre = cnt.prepareStatement("SELECT `account_id`, `user`,`email`, `sdt` FROM `account` WHERE `user`=? and `password` =?");
            pre.setString(1, username);
            pre.setString(2, password);
            ResultSet resultSet = pre.executeQuery();

            Account account = new Account();
            if (!resultSet.next()) return null;
            else
            account.setIdAccount(resultSet.getString(1));
            if (resultSet.next()) account.setUserName(resultSet.getString(2));
            if (resultSet.next()) account.setEmail(resultSet.getString(3));
            if (resultSet.next()) account.setPhone(resultSet.getString(4));
            return account;

        } catch (SQLException e) {
//            throw new RuntimeException(e);
            System.out.println(e);
            return null;
        }
    }
}

