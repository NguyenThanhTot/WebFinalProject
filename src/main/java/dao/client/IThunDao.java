package dao.client;

import models.Product;

import java.sql.SQLException;
import java.util.List;

public interface IThunDao {
    List<Product> getListThun() throws SQLException;
}
