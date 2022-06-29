package dao.client.implement;

import dao.client.IOrderDao;
import dbConnect.DBConnect;
import models.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import models.Order;

public class OrderDao implements IOrderDao {
    Connection cnt = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    @Override
    public List<Order> getListOrder() throws SQLException {
        List<Order> orderList = new ArrayList<>();
        String sql = "select * from order";
        cnt = DBConnect.getConnect();

        try {
            ps = cnt.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setNameProduct(rs.getString("product_name"));
                p.setPriceDesc(rs.getDouble("price_desc"));
                p.setPrice(rs.getDouble("price"));

//                   orderList.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orderList;
    }
}