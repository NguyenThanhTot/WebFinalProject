package dao.client;

import models.Product;

import java.sql.SQLException;
import java.util.List;

public interface IQuanJeanDao {
    List<Product> getlistQuanJean() throws SQLException;
    List<Product> getlistQuanJeanBaggy() throws SQLException;
}
