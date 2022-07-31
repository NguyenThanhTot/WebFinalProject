package controllers.client.productsGirl.subProductsGirl;

import models.Product;
import dao.client.implement.QuanDao;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(urlPatterns = "/Client/ProductsQuan")
public class ServletProductsQuan extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        QuanDao dao = new QuanDao();
        List<Product> listProductsQuan = null;
        try {
            listProductsQuan = dao.getListQuan();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        request.setAttribute("listProductsQuan", listProductsQuan);
        request.getRequestDispatcher("/CLIENT/pages/thu-muc-con-nu/Quan.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
