package controllers.client.productsBoy.subProductsBoy;

import dao.client.implement.AokhoacDao;
import dao.client.implement.QuanJeanDao;
import models.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(urlPatterns = "/client/ServletProductQuanJean")
public class ServletProductQuanJean extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        QuanJeanDao dao = new QuanJeanDao();
        List<Product> listProductQUanJean = null;
        try {
            listProductQUanJean = dao.getlistQuanJean();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("listP",listProductQUanJean);
        request.getRequestDispatcher("/CLIENT/pages/thu-muc-con-nam/Quanjean.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
