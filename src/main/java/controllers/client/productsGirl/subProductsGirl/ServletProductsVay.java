package controllers.client.productsGirl.subProductsGirl;

import dao.client.implement.ThunDao;
import models.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(urlPatterns = "/Client/ProductsVay")
public class ServletProductsVay extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        ThunDao dao = new ThunDao();
        List<Product> listProductsVay = null;
        try {
            listProductsVay = dao.getListThun();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("listProductsVay", listProductsVay);
        request.getRequestDispatcher("/CLIENT/pages/thu-muc-con-nu/Vay.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
