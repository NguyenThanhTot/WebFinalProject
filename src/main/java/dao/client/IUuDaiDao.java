package dao.client;

import models.Product;

import java.sql.SQLException;
import java.util.List;

public interface IUuDaiDao {
    List<Product> getListUuDai() throws SQLException;
}
