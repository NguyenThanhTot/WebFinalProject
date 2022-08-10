package controllers.client.ProductBoy;

import dao.client.implement.AokhoacDao;
import dao.client.implement.ProductBoyDao;
import models.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ServletProductAokhac", value = "/ServletProductAokhac")
public class ServletProductAokhac extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        AokhoacDao dao = new AokhoacDao();
        List<Product> listP = null;
        try {
            listP = dao.getListAokhoac();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("listP", listP);
        request.getRequestDispatcher("/CLIENT/pages/thu-muc-con-nam/Aokhoac.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
