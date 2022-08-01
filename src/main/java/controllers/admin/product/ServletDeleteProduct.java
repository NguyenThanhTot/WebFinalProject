package controllers.admin.product;

import dao.admin.implement.ColorDao;
import dao.admin.implement.ProductDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ServletDeleteProduct", value = "/Admin/deleteProduct")
public class ServletDeleteProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        String uid = request.getParameter("uid");
        ProductDao dao = new ProductDao();
        dao.deleteProduct(uid);

        response.sendRedirect("Product");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
