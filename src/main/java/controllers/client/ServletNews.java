package controllers.client.news;


import dao.client.implement.NewsDao;
import models.News;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ServletNews", value = "/ServletNews")
public class ServletNews extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        NewsDao dao = new NewsDao();
        List<News> listN = null;
        try {
            listN = dao.getListNews();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("listN", listN);
        request.getRequestDispatcher("/CLIENT/pages/other/bang-tin.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
