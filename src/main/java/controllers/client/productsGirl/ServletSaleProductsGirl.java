package controllers.client.productsGirl;

import dao.client.implement.ProductGirlDao;
import models.Product;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(urlPatterns = "/Client/ProductsSaleGirl")
public class ServletSaleProductsGirl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        System.out.println("in");

        ProductGirlDao dao = new ProductGirlDao();
        List<Product> listProductsSaleGirl = null;
        try {
            listProductsSaleGirl = dao.getListProductSale();
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e);
        }

        request.setAttribute("listProductsSaleGirl", listProductsSaleGirl);
        request.getRequestDispatcher("/CLIENT/pages/other/Nu.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
