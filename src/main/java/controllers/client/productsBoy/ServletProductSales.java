package controllers.client.ProductBoy;

import dao.client.implement.ProductBoyDao;
import models.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ServletProductSales", value = "/ServletProductSales")
public class ServletProductSales extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        ProductBoyDao dao = new ProductBoyDao();
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
