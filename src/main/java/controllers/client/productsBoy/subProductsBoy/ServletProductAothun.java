package controllers.client.productsBoy.subProductsBoy;

import dao.client.implement.AothunDao;
import models.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(urlPatterns = "/client/ServletProductAothun")
public class ServletProductAothun extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        AothunDao dao = new AothunDao();
        List<Product> listProductAothun = null;
        try {
            listProductAothun = dao.getListAothun();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("listP", listProductAothun);
        request.getRequestDispatcher("/CLIENT/pages/thu-muc-con-nam/Aothun.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
