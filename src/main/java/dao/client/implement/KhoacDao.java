package dao.client.implement;

import dao.client.IKhoacDao;
import dbConnect.DBConnect;
import models.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class KhoacDao implements IKhoacDao {
    Connection cnt = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    @Override
    public List<Product> getListKhoac() throws SQLException {
        List<Product> listProductsKhoac = new ArrayList<>();
        String sql = "select * from products where subcategory_id='FK' LIMIT 8";
        cnt = DBConnect.getConnect();

        try {
            ps = cnt.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setIdProduct(rs.getString("product_id"));
                p.setNameProduct(rs.getString("product_name"));
                p.setPrice(rs.getDouble("price"));
                p.setPriceDesc(rs.getDouble("price_desc"));

                listProductsKhoac.add(p);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
            return listProductsKhoac;
        }
    }
