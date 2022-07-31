package dao.client.implement;

import dao.client.IProductsBoyDao;
import dbConnect.DBConnect;
import models.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductsBoyDao implements IProductsBoyDao {
    Connection cnt = null;
    PreparedStatement ps = null;
    ResultSet rs = null;


    @Override
    public List<Product> getListProductsFeatured() throws SQLException {
        List<Product> productsFeatured = new ArrayList<>();
        String sql =
                "SELECT products.product_name, products.price, products.price_desc, COUNT(order_details.product_detail_id) FROM products, `product details`, order_details WHERE products.product_id = `product details`.product_id AND `product details`.product_detail_id=order_details.product_detail_id AND products.subcategory_id LIKE 'M%' GROUP BY products.product_name, products.price, products.price_desc ORDER BY COUNT(order_details.product_detail_id) DESC LIMIT 8";
        cnt = DBConnect.getConnect();

        try {
            ps = cnt.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setNameProduct(rs.getString("product_name"));
                p.setPriceDesc(rs.getDouble("price_desc"));
                p.setPrice(rs.getDouble("price"));

                productsFeatured.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return productsFeatured;
    }

    @Override
    public List<Product> getListProductSale() throws SQLException {
        List<Product> productsList = new ArrayList<>();
        String sql = "select * from products where price > price_desc and subcategory_id LIKE 'M%' LIMIT 8";
        cnt = DBConnect.getConnect();

        try {
            ps = cnt.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setNameProduct(rs.getString("product_name"));
                p.setPriceDesc(rs.getDouble("price_desc"));
                p.setPrice(rs.getDouble("price"));

                productsList.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return productsList;
    }

    @Override
    public List<Product> getListSuggestedProducts() throws SQLException {
        List<Product> suggestedProducts = new ArrayList<>();
        String sql = "select * from products where product_id LIKE 'M%' LIMIT 8";
        cnt = DBConnect.getConnect();

        try {
            ps = cnt.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setNameProduct(rs.getString("product_name"));
                p.setPriceDesc(rs.getDouble("price_desc"));
                p.setPrice(rs.getDouble("price"));

                suggestedProducts.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return suggestedProducts;
    }
}
