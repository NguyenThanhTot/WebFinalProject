package controllers.admin.user;

import dao.admin.implement.AccountDao;
import models.UserTot;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ServletAdmin", value = "/Admin/User")
public class ServletAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       response.setContentType("text/html; charset=UTF-8");

        AccountDao dao = new AccountDao();
        List<UserTot> listU = null;
        try {
            listU = dao.getListAccount();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("listU", listU);
        request.getRequestDispatcher("/ADMIN/pages/khachhang/khachhang.jsp").forward(request,response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
