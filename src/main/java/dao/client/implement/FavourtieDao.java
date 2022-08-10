package dao.client.implement;

import dao.client.IFavourite;
import dbConnect.DBConnect;
import models.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FavourtieDao implements IFavourite {
    Connection cnt = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    @Override
    public List<Product> getListFavourite() throws SQLException {
        List<Product> listFavourite = new ArrayList<>();
        String sql = "select * from products where id_product =  ?";
        cnt = DBConnect.getConnect();

        try {
            ps = cnt.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setNameProduct(rs.getString("product_name"));
                p.setPriceDegree(rs.getDouble("price_desc"));
                p.setPrice(rs.getDouble("price"));

            listFavourite.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listFavourite;
    }
}
