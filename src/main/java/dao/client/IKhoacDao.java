package dao.client;

import models.Product;

import java.sql.SQLException;
import java.util.List;

public interface IKhoacDao {
    List<Product> getListKhoac() throws SQLException;
}
