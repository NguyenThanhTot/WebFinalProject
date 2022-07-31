package dao.client;

import models.Product;

import java.sql.SQLException;
import java.util.List;

public interface IProductsBoyDao {
    List<Product> getListProductSale() throws SQLException;
    List<Product> getListProductsFeatured() throws SQLException;
    List<Product> getListSuggestedProducts() throws SQLException;
}
