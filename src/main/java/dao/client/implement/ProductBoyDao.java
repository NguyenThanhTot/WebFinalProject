package dao.client.implement;

import dao.client.IProductBoyDao;

import dbConnect.DBConnect;
import models.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductBoyDao implements IProductBoyDao {
    Connection cnt = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

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
                p.setPriceDegree(rs.getDouble("price_desc"));
                p.setPrice(rs.getDouble("price"));

                productsList.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return productsList;
    }
    public List<Product> getListSuggestedProducts() throws SQLException{
        List<Product> suggestedProducts = new ArrayList<>();
        String sql = "select * from products where product_id LIKE 'M_016' LIMIT 8";
        cnt = DBConnect.getConnect();

        try {
            ps = cnt.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setNameProduct(rs.getString("product_name"));
                p.setPriceDegree(rs.getDouble("price_desc"));
                p.setPrice(rs.getDouble("price"));

                suggestedProducts.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return suggestedProducts;
    }
    public static void main(String[] args) throws SQLException {
        ProductBoyDao usd = new ProductBoyDao();
        List<Product> list = usd.getListProductSale();
        for (int i = 0; i < list.size(); i++) {
            System.out.println("ListProductSale: "+list.get(i).getNameProduct()+ "");
        }
        List<Product> listSuggest = usd.getListSuggestedProducts();
        for(int i = 0; i<listSuggest.size();i++){
            System.out.println("ListSuggestedProducts: "+listSuggest.get(i).getNameProduct()+ "");
        }
    }
}
