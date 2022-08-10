package dao.client;

import models.Product;

import java.sql.SQLException;
import java.util.List;

public interface IProductBoyDao {
    List<Product> getListProductSale() throws SQLException;
}
