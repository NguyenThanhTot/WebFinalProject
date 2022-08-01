package controllers.admin.size;

import dao.admin.implement.SizeDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ServletDeleteSize", value = "/Admin/deleteSize")
public class ServletDeleteSize extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        String uid = request.getParameter("uid");
        SizeDao dao = new SizeDao();
        dao.deleteSize(uid);

        response.sendRedirect("Size");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
