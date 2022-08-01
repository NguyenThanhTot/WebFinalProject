package dao.admin.implement;

import dao.admin.IOrderDao;
import dbConnect.DBConnect;
import modelsAdmin.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OrderDao implements IOrderDao {
    Connection cnt= null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    @Override
    public List<Order> getListOrder() throws SQLException {
        List<Order> orderList = new ArrayList<>();
        String sql = "select * from orders";
        cnt = DBConnect.getConnect();

        try {
            ps = cnt.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()){
                Order order = new Order();
                order.setIdOrder(rs.getString("order_id"));
                order.setIdAccount(rs.getString("account_id"));
                order.setOrderTime(rs.getString("order_time"));
                order.setCancelTime(rs.getString("order_cancel_time"));
                order.setFinishTime(rs.getString("order_finish_time"));
                order.setStatus(rs.getString("status"));

                orderList.add(order);
            }
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return orderList;
    }

    @Override
    public List<OrderDetailProduct> getListProductInOrder(String id) throws SQLException {
            List<OrderDetailProduct> listProductInOrder = new ArrayList<>();
            String sql = "select * from order_details where order_id = ?";
            cnt = DBConnect.getConnect();
        try {
            ps = cnt.prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {
                OrderDetailProduct od = new OrderDetailProduct();
                od.setOd_dt_id(rs.getString("order_detail_id"));

                Order order = new Order();
                String sqlOrder = "select * from orders where order_id = ?";
                PreparedStatement psOrder = null;
                ResultSet rsOrder = null;
                psOrder = cnt.prepareStatement(sqlOrder);
                psOrder.setString(1, rs.getString("order_id"));
                rsOrder = psOrder.executeQuery();
                while (rsOrder.next()) {
                    order.setIdOrder(rsOrder.getString("order_id"));
                    order.setIdAccount(rsOrder.getString("account_id"));
                    order.setOrderTime(rsOrder.getString("order_time"));
                    order.setCancelTime(rsOrder.getString("order_cancel_time"));
                    order.setFinishTime(rsOrder.getString("order_finish_time"));
                    order.setStatus(rsOrder.getString("status"));
                }
                od.setOder(order);

                Product_detail pd = new Product_detail();
                String sqlPd = "select * from product_details where product_detail_id = ?";
                PreparedStatement psPd = null;
                ResultSet rsPd = null;
                psPd = cnt.prepareStatement(sqlPd);
                psPd.setString(1, rs.getString("product_detail_id"));
                rsPd = psPd.executeQuery();
                while (rsPd.next()) {
                    pd.setPro_dt_id(rsPd.getString("product_detail_id"));

                    Product product = new Product();
                    String sqlP = "select * from products where product_id = ?";
                    PreparedStatement psP = null;
                    ResultSet rsP = null;
                    psP = cnt.prepareStatement(sqlP);
                    psP.setString(1, rsPd.getString("product_id"));
                    rsP = psP.executeQuery();
                    while (rsP.next()) {
                        product.setIdProduct(rsP.getString("product_id"));
                        product.setNameProduct(rsP.getString("product_name"));

                        Categories_child cate_child = new Categories_child();
                        String sqlCa_child = "select * from subcategories where subcategory_id = ?";
                        PreparedStatement psCa_child = null;
                        ResultSet rsCa_child = null;
                        psCa_child = cnt.prepareStatement(sqlCa_child);
                        psCa_child.setString(1, rsP.getString("subcategory_id"));
                        rsCa_child = psCa_child.executeQuery();
                        while (rsCa_child.next()) {
                            cate_child.setCategory_child_id(rsCa_child.getString("subcategory_id"));
                            cate_child.setCategory_child_name(rsCa_child.getString("subcategory_name"));
                            Categories cate = new Categories();
                            String sqlcate = "select * from categories where category_id = ?";
                            PreparedStatement pscate = null;
                            ResultSet rscate = null;
                            pscate = cnt.prepareStatement(sqlcate);
                            pscate.setString(1, rsCa_child.getString("category_id"));
                            rscate = pscate.executeQuery();
                            while (rscate.next()) {
                                cate.setCategory_id(rscate.getString("category_id"));
                                cate.setCategory_name(rscate.getString("category_name"));
                            }
                            cate_child.setCategory_parent(cate);
                        }
                        product.setCategories_child(cate_child);

                        product.setCost(rsP.getDouble("cost"));
                        product.setPrice(rsP.getDouble("price"));
                        product.setPriceDesc(rsP.getDouble("price_desc"));
                        product.setDescription(rsP.getString("description"));

                    }
                    pd.setProduct(product);

                    Color color = new Color();
                    String sqlColor = "select * from colors where color_id = ?";
                    PreparedStatement psColor = null;
                    ResultSet rsColor = null;
                    psColor = cnt.prepareStatement(sqlColor);
                    psColor.setString(1, rsPd.getString("color_id"));
                    rsColor = psColor.executeQuery();
                    while (rsColor.next()) {
                        color.setColor_id(rsColor.getString("color_id"));
                        color.setColor_name(rsColor.getString("color_name"));
                    }
                    pd.setColor(color);

                    Size size = new Size();
                    String sqlSize = "select * from Size where size_id = ?";
                    PreparedStatement psSize = null;
                    ResultSet rsSize = null;
                    psSize = cnt.prepareStatement(sqlSize);
                    psSize.setString(1, rsPd.getString("size_id"));
                    rsSize = psSize.executeQuery();
                    while (rsSize.next()) {
                        size.setSize_id(rsSize.getString("size_id"));
                        size.setSize_name(rsSize.getString("size_name"));
                    }
                    pd.setSize(size);
                }
                od.setProduct_detail(pd);

                od.setQuantity(rs.getInt("quantity"));

                listProductInOrder.add(od);
            }
        }
        catch (SQLException e){
                e.printStackTrace();
            }
        return listProductInOrder;
    }

    public static void main(String[] args) throws SQLException {
        OrderDao dao = new OrderDao();
        List<Order> list = dao.getListOrder();
        for (int i = 0; i <list.size() ; i++) {
        System.out.println(list.get(i).getIdOrder()+"\t"+
                list.get(i).getIdAccount()+"\t"+
                list.get(i).getOrderTime()+"\t"+
                list.get(i).getStatus()
                );
        }
//        List<OrderDetailProduct> list = dao.getListProductInOrder("O2201070003");
//        for (int i = 0; i < list.size(); i++) {
//            System.out.println(
//                    list.get(i).getOder().getIdOrder()+"\t"+
//                    list.get(i).getOd_dt_id()+"\t"+
//                    list.get(i).getProduct_detail().getProduct().getNameProduct()+"\t"+
//                    list.get(i).getQuantity()+"\t"
//            );
//        }
    }
}
