package controllers.admin.size;

import dao.admin.implement.ColorDao;
import dao.admin.implement.SizeDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ServletAddSize", value = "/Admin/AddSize")
public class ServletAddSize extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String maSize = request.getParameter("size_id_add");
        String tenSize = request.getParameter("size_name_add");

        SizeDao dao = new SizeDao();
        dao.addSize(maSize, tenSize);
        response.sendRedirect("Size");
        response.setContentType("text/html; charset=UTF-8");
    }
}
