package controllers.admin.user;

import dao.admin.implement.AccountDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ServletDeleteUser", value = "/Admin/deleteUser")
public class ServletDeleteUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        String uid = request.getParameter("uid");
        AccountDao dao = new AccountDao();
        dao.deleteAccount(uid);

        response.sendRedirect("User");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
