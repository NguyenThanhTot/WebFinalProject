package controllers.admin.color;
import dao.admin.implement.ColorDao;
import modelsAdmin.Color;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ServletGetListColor", value = "/Admin/Color")
public class ServletGetListColor extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        ColorDao dao = new ColorDao();
        List<Color> listColor = null;
        try {
            listColor = dao.getColorList();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("listColor", listColor);
        System.out.println(listColor);
        request.getRequestDispatcher("/ADMIN/pages/sanpham/mau-sac.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
