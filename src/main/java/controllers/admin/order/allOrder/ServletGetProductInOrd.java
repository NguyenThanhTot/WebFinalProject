//package controllers.admin.order.allOrder;
//
//import dao.admin.implement.OrderDao;
//import models.OrderDetail;
//import modelsAdmin.OrderDetailProduct;
//
//import javax.servlet.*;
//import javax.servlet.http.*;
//import javax.servlet.annotation.*;
//import java.io.IOException;
//import java.sql.SQLException;
//import java.util.List;
//
//@WebServlet(name = "ServletGetProductInOrd", value = "/ServletGetProductInOrd")
//public class ServletGetProductInOrd extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        response.setContentType("text/html; charset=UTF-8");
//
//        String uid = request.getParameter("uid");
//        OrderDao dao = new OrderDao();
//        List<OrderDetailProduct> listOrderDetail= null;
//
//        try {
//            listOrderDetail = dao.getListProductInOrder(uid);
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        request.setAttribute("listOrderDetail", listOrderDetail);
//        response.sendRedirect("Order");
//        request.getRequestDispatcher("/ADMIN/pages/donhang/tat-ca-don-hang.jsp").forward(request,response);
//
//
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//    }
//}
