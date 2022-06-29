package dao.client;

import models.Product;

import java.sql.SQLException;
import java.util.List;

public interface IHoodieDao {
    List<Product> getListHoodie() throws SQLException;
}
