package controllers.admin.size;

import dao.admin.implement.SizeDao;
import modelsAdmin.Size;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ServletGetListSize", value = "/Admin/Size")
public class ServletGetListSize extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        SizeDao dao = new SizeDao();
        List<Size> listSize = null;
        try {
            listSize = dao.getSizeList();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("listSize", listSize);
        request.getRequestDispatcher("/ADMIN/pages/sanpham/size-sp.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
