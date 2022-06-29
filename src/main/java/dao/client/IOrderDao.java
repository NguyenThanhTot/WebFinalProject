package dao.client;

import models.Order;

import java.sql.SQLException;
import java.util.List;

public interface IOrderDao {
    List<Order> getListOrder() throws SQLException;

}
