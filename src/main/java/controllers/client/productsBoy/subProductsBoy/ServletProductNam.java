package controllers.client.productsBoy.subProductsBoy;

import dao.client.implement.ProductBoyDao;
import models.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ServletProductNam", value = "/ServletProductNam")
public class ServletProductNam extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        ProductBoyDao dao = new ProductBoyDao();
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
