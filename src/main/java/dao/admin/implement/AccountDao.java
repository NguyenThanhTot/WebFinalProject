package dao.admin.implement;

import dbConnect.DBConnect;
import dao.admin.IAccountDao;
import models.UserTot;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AccountDao implements IAccountDao {
    Connection cnt= null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    @Override
    public List<UserTot> getListAccount() throws SQLException {
        List<UserTot> userList = new ArrayList<>();
        String sql = "select * from account";
        cnt = DBConnect.getConnect();

        try {
            ps = cnt.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()){
                UserTot user = new UserTot();
                user.setUserId(rs.getString("account_id"));
                user.setUserName(rs.getString("user"));
                user.setPassword(rs.getString("password"));
                user.setFullName(rs.getString("full_name"));
                user.setDateBorn(rs.getString("ngay_sinh"));
                user.setEmail(rs.getString("email"));
                user.setPhoneNumber(rs.getString("sdt"));
                user.setCity(rs.getString("tinh_thanh"));
                user.setDistrict(rs.getString("quan_huyen"));
                user.setDetail_address(rs.getString("dia_chi"));

                userList.add(user);
            }
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return userList;
    }

    @Override
    public boolean deleteAccount(String id) {
            PreparedStatement ps = null;
            try {
                Connection conn = DBConnect.getConnect();
                String sql = "delete from account where account_id = ?";
                ps = conn.prepareStatement(sql);
                ps.setString(1, id);
                int i = ps.executeUpdate();

                return i == 1;
            } catch (SQLException e) {
                e.printStackTrace();
                return false;
            }
    }

    public static void main(String[] args) throws SQLException {
        AccountDao usd = new AccountDao();
        List<UserTot> list = usd.getListAccount();
        for (int i = 0; i < list.size(); i++) {
            System.out.println(list.get(i).getDetail_address()+"");
        }
    }
}
