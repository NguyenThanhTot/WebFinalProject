package controllers.client.login;

import dao.client.ILoginDao;
import dao.client.implement.LoginDao;
import models.Account;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;


@WebServlet(name = "ServletAccountLogin", value = "/ServletAccountLogin")
public class ServletAccountLogin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("CLIENT/pages/other/dang-nhap.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println(username);
        System.out.println(password);
        Account account = new LoginDao().login(username, password);
        if (account != null) {
            session.setAttribute("account", account);
            response.sendRedirect("Client/News");
            System.out.println("Dang nhap");

//        RequestDispatcher dispatcher = request.getRequestDispatcher("gio-hang.jsp");
//        dispatcher.forward(request, response);
        } else {
            request.setAttribute("Message", "Dang nhap khong thanh cong");
            RequestDispatcher dispatcher = request.getRequestDispatcher("CLIENT/pages/other/dang-nhap.jsp");
            dispatcher.forward(request, response);
            System.out.println("fail");
        }
    }
}
