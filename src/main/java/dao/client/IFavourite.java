package dao.client;

import models.Product;

import java.sql.SQLException;
import java.util.List;

public interface IFavourite {
    List<Product> getListFavourite() throws SQLException;
}
