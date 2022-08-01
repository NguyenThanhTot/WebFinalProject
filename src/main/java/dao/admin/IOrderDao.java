package dao.admin;

import modelsAdmin.Order;
import modelsAdmin.OrderDetailProduct;

import java.sql.SQLException;
import java.util.List;

public interface IOrderDao {
    public List<Order> getListOrder() throws SQLException;
    public List<OrderDetailProduct> getListProductInOrder(String id) throws SQLException;
}
