package controllers.admin.order.finishOrder;

import dao.admin.implement.OrderDao;
import modelsAdmin.Order;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ServletFinishOrder", value = "/Admin/FinishOrder")
public class ServletFinishOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        OrderDao dao = new OrderDao();
        List<Order> listOrderFinish = new ArrayList<Order>();
        try {
            List<Order> listOrder = dao.getListOrder();
            for (int i = 0; i < listOrder.size(); i++) {
                if(listOrder.get(i).getStatus().equals("Đã hoàn thành")){
                    listOrderFinish.add(listOrder.get(i));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        request.setAttribute("listOrderFinish", listOrderFinish);
        request.getRequestDispatcher("/ADMIN/pages/donhang/don-da-giao.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
