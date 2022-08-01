package controllers.admin.product;

import dao.admin.implement.ProductDao;
import modelsAdmin.Categories_child;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ServletAddProduct", value = "/Admin/AddProduct")
public class ServletAddProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String masp = request.getParameter("ma_sp_input");
        String ten = request.getParameter("ten_sp_input");
        String danhmuccon = request.getParameter("subcategory_id");
        double gia_nhap_input = Double.parseDouble(request.getParameter("gia_nhap_input"));
        double gia_sp_input =  Double.parseDouble(request.getParameter("gia_sp_input"));
        double gia_giam_input =  Double.parseDouble(request.getParameter("gia_giam_input"));
        String mota = request.getParameter("mota_sp_input");

        ProductDao dao = new ProductDao();
        Categories_child categories_child = null;
//        System.out.println(danhmuccon);
        try {
            List<Categories_child> categoriesChildList = dao.getSubcategoriesList();
            for (int i = 0; categoriesChildList.size() > i; i++){
                if(categoriesChildList.get(i).getCategory_child_id().equals(danhmuccon)){
                    categories_child = categoriesChildList.get(i);
                }
//                System.out.println(categoriesChildList.get(i).getCategory_child_id() + "-" + danhmuccon);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println(categories_child);
        dao.addProductNew(masp, ten, categories_child, gia_nhap_input, gia_sp_input, gia_giam_input, mota);

        response.sendRedirect("Product");

    }
}
