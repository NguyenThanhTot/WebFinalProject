package dao.client.implement;

import dao.client.IUuDaiDao;
import dbConnect.DBConnect;
import models.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UuDaiDao implements IUuDaiDao {
    Connection cnt = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    @Override
    public List<Product> getListUuDai() throws SQLException {
        List<Product> listProductsUuDai = new ArrayList<>();
        String sql = "select * from products where subcategory_id LIKE 'F%' ORDER BY (price - price_desc) DESC LIMIT 8";
        cnt = DBConnect.getConnect();

        try {
            ps = cnt.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setNameProduct(rs.getString("product_name"));
                p.setPrice(rs.getDouble("price"));
                p.setPriceDesc(rs.getDouble("price_desc"));

                listProductsUuDai.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listProductsUuDai;
    }
}
