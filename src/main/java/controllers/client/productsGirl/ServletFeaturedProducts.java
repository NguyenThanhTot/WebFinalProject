package controllers.client.productsGirl;

import dao.client.implement.ProductGirlDao;
import models.Product;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(urlPatterns = "/Client/FeaturedProducts")
public class ServletFeaturedProducts extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        ProductGirlDao dao = new ProductGirlDao();
        List<Product> productsFeatured = null;
        try {
            productsFeatured = dao.getListProductsFeatured();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        request.setAttribute("productsFeatured", productsFeatured);
        request.getRequestDispatcher("/CLIENT/pages/other/Nu.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
