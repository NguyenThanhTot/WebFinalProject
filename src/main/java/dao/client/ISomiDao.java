package dao.client;

import models.Product;

import java.sql.SQLException;
import java.util.List;

public interface ISomiDao {
    List<Product> getListSomi() throws SQLException;
}
