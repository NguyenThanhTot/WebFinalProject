package controllers.client.productsBoy.subProductsBoy;

import dao.client.implement.AokhoacDao;
import models.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(urlPatterns = "/client/ServletProductAosomi")
public class ServletProductAoSomi extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        AokhoacDao dao = new AokhoacDao();
        List<Product> listProductAosomi = null;
        try {
            listProductAosomi = dao.getListAokhoac();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("listP", listProductAosomi);
        request.getRequestDispatcher("/CLIENT/pages/thu-muc-con-nam/Aosomi.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
