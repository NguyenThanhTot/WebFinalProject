package controllers.client.productGirl;

import dao.client.implement.ThunDao;
import dao.client.implement.YemDao;
import models.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ServletProductsYem", value = "/Client/ProductsYem")
public class ServletProductsYem extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        YemDao dao = new YemDao();
        List<Product> listProductsYem = null;
        try {
            listProductsYem = dao.getListYem();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("listProductsYem", listProductsYem);
        request.getRequestDispatcher("/CLIENT/pages/thu-muc-con-nu/Yem.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
