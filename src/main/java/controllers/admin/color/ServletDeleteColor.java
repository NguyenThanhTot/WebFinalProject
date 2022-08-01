package controllers.admin.color;
import dao.admin.implement.ColorDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ServletDeleteColor", value = "/Admin/deleteColor")
public class ServletDeleteColor extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        String uid = request.getParameter("uid");
        ColorDao dao = new ColorDao();
        dao.deleteColor(uid);

        response.sendRedirect("Color");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
