package dao.client;

import models.Product;

import java.sql.SQLException;
import java.util.List;

public interface IVayDao {
    List<Product> getListVay() throws SQLException;
}
