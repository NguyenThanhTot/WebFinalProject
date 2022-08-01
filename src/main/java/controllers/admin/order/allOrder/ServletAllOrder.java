package controllers.admin.order.allOrder;


import dao.admin.implement.OrderDao;
import modelsAdmin.Order;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ServletAllOrder", value = "/Admin/Order")
public class ServletAllOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        OrderDao dao = new OrderDao();
        try {
            List<Order> listOrder = dao.getListOrder();
            request.setAttribute("listOrder", listOrder);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        request.getRequestDispatcher("/ADMIN/pages/donhang/tat-ca-don-hang.jsp").forward(request, response);


//        OrderDao dao = new ProductDao();
//        List<Product> listproduct = null;
//        List<Categories> listCategories = null;
//        List<Categories_child> categories_childList = null;
//        try {
//            listproduct = dao.getListProduct();
//            listCategories = dao.getCategoriesList();
//            categories_childList = dao.getSubcategoriesList();
////            String cid = request.getParameter("pid");
////            categories_childList = dao.getSubcategoriesList(cid);
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        request.setAttribute("listCategory", listCategories);
//        request.setAttribute("listProduct", listproduct);
//        request.setAttribute("categories_childList", categories_childList);
//        request.getRequestDispatcher("/ADMIN/pages/sanpham/danh-sach-sp.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
