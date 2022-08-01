package controllers.admin.color;

import dao.admin.implement.ColorDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ServletAddColor", value = "/Admin/AddColor")
public class ServletAddColor extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        String maMau = request.getParameter("mamau");
        String tenMau = request.getParameter("tenmau");

        ColorDao dao = new ColorDao();
        dao.addColor(maMau, tenMau);
        response.sendRedirect("Color");
    }
}
