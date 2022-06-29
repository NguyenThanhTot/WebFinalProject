package controllers.client.productGirl;

import dao.client.implement.HoodieDao;
import dao.client.implement.ProductGirlDao;
import models.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ServletProductsHoodie", value = "/Client/ProductsHoodie")
public class ServletProductsHoodie extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        HoodieDao dao = new HoodieDao();
        List<Product> listProductsHoodie = null;
        try {
            listProductsHoodie = dao.getListHoodie();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("listProductsHoodie", listProductsHoodie);
        request.getRequestDispatcher("/CLIENT/pages/thu-muc-con-nu/AoHoodie.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
