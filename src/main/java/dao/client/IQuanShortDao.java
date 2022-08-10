package dao.client;

import models.Product;

import java.sql.SQLException;
import java.util.List;

public interface IQuanShortDao {
    List<Product> getlistQuanShort() throws SQLException;
}
