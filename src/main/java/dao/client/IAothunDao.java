package dao.client;

import models.Product;

import java.sql.SQLException;
import java.util.List;

public interface IAothunDao {
    List<Product> getListAothun() throws SQLException;
    List<Product> getListAothunFreeSize() throws SQLException;
}
