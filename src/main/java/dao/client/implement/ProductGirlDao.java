package dao.client.implement;

import dao.client.IProductGirlDao;
import dbConnect.DBConnect;
import models.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductGirlDao implements IProductGirlDao {
    Connection cnt = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    @Override
    public List<Product> getListProductSale() throws SQLException {
        List<Product> productsList = new ArrayList<>();
        String sql = "select * from products where price > price_desc and subcategory_id LIKE 'F%' LIMIT 8";
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
    public List<Product> getListSuggestedProducts() throws SQLException{
        List<Product> suggestedProducts = new ArrayList<>();
        String sql = "select * from products where product_id LIKE 'F_001' LIMIT 8";
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
    public static void main(String[] args) throws SQLException {
        ProductGirlDao usd = new ProductGirlDao();
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
