package controllers.client.productGirl;

import dao.client.implement.HoodieDao;
import dao.client.implement.SomiDao;
import dao.client.implement.ThunDao;
import models.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ServletProductsSomi", value = "/Client/ProductsSomi")
public class ServletProductsSomi extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        SomiDao dao = new SomiDao();
        List<Product> listProductsSomi = null;
        try {
            listProductsSomi = dao.getListSomi();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("listProductsSomi", listProductsSomi);
        request.getRequestDispatcher("/CLIENT/pages/thu-muc-con-nu/Aosomi.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
