package controllers.client.productsBoy.subProductsBoy;


import dao.client.implement.QuanShortDao;
import models.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ServletProductQuanShort", value = "/ServletProductQuanShort")
public class ServletProductQuanShort extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; harset=UTF-8");

        QuanShortDao dao = new QuanShortDao();
        List<Product> listP = null;
        try {
            listP = dao.getlistQuanShort();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("listP", listP);
        request.getRequestDispatcher("/CLIENT/pages/thu-muc-con-nam/Quanshort.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
