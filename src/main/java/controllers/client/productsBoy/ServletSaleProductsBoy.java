package controllers.client.productsBoy;

import dao.client.implement.ProductGirlDao;
import dao.client.implement.ProductsBoyDao;
import models.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ServletProductSale", value = "/Client/ProductSaleBoy")
public class ServletSaleProductsBoy extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        ProductsBoyDao dao = new ProductsBoyDao();
        List<Product> listP = null;
        try {
            listP = dao.getListProductSale();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("listP", listP);
        request.getRequestDispatcher("/CLIENT/pages/other/Nam.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
