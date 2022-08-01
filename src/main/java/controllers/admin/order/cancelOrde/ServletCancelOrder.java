package controllers.admin.order.cancelOrde;

import dao.admin.implement.OrderDao;
import modelsAdmin.Order;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ServletCancelOrder", value = "/Admin/CancelOrder")
public class ServletCancelOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        OrderDao dao = new OrderDao();
        List<Order> listOrderCancel = new ArrayList<Order>();
        try {
            List<Order> listOrder = dao.getListOrder();
            for (int i = 0; i < listOrder.size(); i++) {
                if(listOrder.get(i).getStatus().equals("Đơn hàng bị hủy")){
                    listOrderCancel.add(listOrder.get(i));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        request.setAttribute("listOrderCancel", listOrderCancel);
        request.getRequestDispatcher("/ADMIN/pages/donhang/don-da-huy.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
