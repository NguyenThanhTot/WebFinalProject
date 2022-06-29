package dao.client;

import models.News;
import models.Product;

import java.sql.SQLException;
import java.util.List;

public interface IProductGirlDao {
    List<Product> getListProductSale() throws SQLException;
}
