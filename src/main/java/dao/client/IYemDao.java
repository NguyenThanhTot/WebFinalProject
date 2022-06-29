package dao.client;

import models.Product;

import java.sql.SQLException;
import java.util.List;

public interface IYemDao {
    List<Product> getListYem() throws SQLException;
}
