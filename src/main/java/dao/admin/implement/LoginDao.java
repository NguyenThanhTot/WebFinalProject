package dao.admin.implement;

import dbConnect.DBConnect;
import modelsAdmin.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDao {
    Connection cnt= null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public User checkLogin(String username, String password) {
        String query = "select * from user where username = ? and password = ?";
        cnt = DBConnect.getConnect();
        try {
            ps = cnt.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User(rs.getString(1), rs.getString(2));
                return user;

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
        LoginDao dao = new LoginDao();
        User u = dao.checkLogin("123", "admin");
        System.out.println(u);
        System.out.println(u.getUserName() + "---" + u.getPassword());
    }
}
