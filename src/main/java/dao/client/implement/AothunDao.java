package dao.client.implement;

import dao.client.IAothunDao;
import dbConnect.DBConnect;
import models.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AothunDao implements IAothunDao {
    Connection cnt = null;
    PreparedStatement ps = null;
    ResultSet rs = null;


    @Override
    public List<Product> getListAothun() throws SQLException {
        List<Product> listProductAothun =  new ArrayList<>();
        String sql = "select * from products where subcategory_id='MT' LIMIT 8";
        cnt =  DBConnect.getConnect();

        try {
            ps = cnt.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setNameProduct(rs.getString("product_name"));
                p.setPrice(rs.getDouble("price"));
                p.setPriceDegree(rs.getDouble("price_desc"));

                listProductAothun.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listProductAothun;
    }

    @Override
    public List<Product> getListAothunFreeSize() throws SQLException {
        List<Product> listProductAothun =  new ArrayList<>();
        String sql = "select * from products where subcategory_id='MT' LIMIT 8";
        cnt =  DBConnect.getConnect();

        try {
            ps = cnt.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setNameProduct(rs.getString("product_name"));
                p.setPrice(rs.getDouble("price"));
                p.setPriceDegree(rs.getDouble("price_desc"));

                listProductAothun.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listProductAothun;
    }
}
