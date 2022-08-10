package dao.client;

import models.Product;

import java.sql.SQLException;
import java.util.List;

public interface IAokhoacDao {
    List<Product> getListAokhoac() throws SQLException;
}
