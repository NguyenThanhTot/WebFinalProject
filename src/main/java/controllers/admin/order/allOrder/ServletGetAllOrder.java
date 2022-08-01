//package controllers.admin.order.allOrder;
//
//import dao.admin.implement.OrderDao;
//import modelsAdmin.Order;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.sql.SQLException;
//import java.util.List;
//
//@WebServlet(name = "ServletGetAllOrder", value = "Admin/Order")
//public class ServletGetAllOrder extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        response.setContentType("text/html; charset=UTF-8");
//
//        OrderDao dao = new OrderDao();
//        List<Order> listOrder = null;
//
//        try {
//            listOrder = dao.getListOrder();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        request.setAttribute("listOrder", listOrder);
//        request.getRequestDispatcher("/ADMIN/pages/donhang/tat-ca-don-hang.jsp").forward(request,response);
//
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//    }
//}
