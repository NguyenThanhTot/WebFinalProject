package dao.client.implement;

import dao.client.ISomiDao;
import dbConnect.DBConnect;
import models.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SomiDao implements ISomiDao {
    Connection cnt = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    @Override
    public List<Product> getListSomi() throws SQLException {
        List<Product> listProductSomi = new ArrayList<>();
        String sql = "select * from products where subcategory_id='MS' LIMIT 8";
        cnt =  DBConnect.getConnect();

        try {
            ps = cnt.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setNameProduct(rs.getString("product_name"));
                p.setPrice(rs.getDouble("price"));
                p.setPriceDegree(rs.getDouble("price_desc"));

                listProductSomi.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listProductSomi;
    }
}
