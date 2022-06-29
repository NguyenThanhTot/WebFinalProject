package dao.client;

import models.Product;
import java.sql.SQLException;
import java.util.List;

public interface IQuanDao {
    List<Product> getListQuan() throws SQLException;
}
