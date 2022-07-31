package controllers.client.productsGirl.subProductsGirl;

import dao.client.implement.KhoacDao;
import models.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(urlPatterns = "/Client/ProductsKhoac")
public class ServletProductsKhoac extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        KhoacDao dao = new KhoacDao();
        List<Product> listProductsKhoac = null;
        try {
            listProductsKhoac = dao.getListKhoac();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("listProductsKhoac", listProductsKhoac);
        request.getRequestDispatcher("/CLIENT/pages/thu-muc-con-nu/AoKhoac.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
