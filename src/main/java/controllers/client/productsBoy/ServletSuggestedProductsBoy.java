package controllers.client.productsBoy;

import models.Product;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import dao.client.implement.ProductsBoyDao;

@WebServlet(name = "ServletSuggestedProducts", value = "/Client/SuggestedProductsBoy")
public class ServletSuggestedProductsBoy extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        ProductsBoyDao dao = new ProductsBoyDao();
        List<Product> listS = null;
        try {
            listS = dao.getListSuggestedProducts();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        request.setAttribute("listS", listS);
        request.getRequestDispatcher("/CLIENT/pages/other/Nam.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
