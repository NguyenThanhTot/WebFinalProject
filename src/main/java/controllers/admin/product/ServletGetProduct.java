package controllers.admin.product;

import dao.admin.implement.ProductDao;
import dao.admin.implement.SizeDao;
import modelsAdmin.Categories;
import modelsAdmin.Categories_child;
import modelsAdmin.Product;
import models.Size;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ServletGetProduct", value = "/Admin/Product")
public class ServletGetProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        ProductDao dao = new ProductDao();
        List<Product> listproduct = null;
        List<Categories> listCategories = null;
        List<Categories_child> categories_childList = null;
        try {
            listproduct = dao.getListProduct();
            listCategories = dao.getCategoriesList();
            categories_childList = dao.getSubcategoriesList();
//            String cid = request.getParameter("pid");
//            categories_childList = dao.getSubcategoriesList(cid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        request.setAttribute("listCategory", listCategories);
        request.setAttribute("listProduct", listproduct);
        request.setAttribute("categories_childList", categories_childList);
        request.getRequestDispatcher("/ADMIN/pages/sanpham/danh-sach-sp.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
