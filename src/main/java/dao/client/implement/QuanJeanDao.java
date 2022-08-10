package dao.client.implement;

import dao.client.IQuanJeanDao;
import dbConnect.DBConnect;
import models.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class QuanJeanDao implements IQuanJeanDao {
    Connection cnt = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    @Override
    public List<Product> getlistQuanJean() throws SQLException {
        List<Product> listProductQuanJean = new ArrayList<>();
        String sql = "select * from products where subcategory_id='MJ' LIMIT 8";
        cnt =  DBConnect.getConnect();

        try {
            ps = cnt.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setNameProduct(rs.getString("product_name"));
                p.setPrice(rs.getDouble("price"));
                p.setPriceDegree(rs.getDouble("price_desc"));

                listProductQuanJean.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listProductQuanJean;
    }

    @Override
    public List<Product> getlistQuanJeanBaggy() throws SQLException {
        List<Product> listQuanJeanBaggy = new ArrayList<>();
        String sql = "select * from products where subcategory_id='MJ' LIMIT 8";
        cnt =  DBConnect.getConnect();

        try {
            ps = cnt.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setNameProduct(rs.getString("product_name"));
                p.setPrice(rs.getDouble("price"));
                p.setPriceDegree(rs.getDouble("price_desc"));

              listQuanJeanBaggy.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listQuanJeanBaggy;
    }
}
