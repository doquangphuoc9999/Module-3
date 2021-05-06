package Controller;

import Dao.CategoryDao;
import Dao.PostDao;
import Model.Post;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "deleteServlet", urlPatterns = "/delete")
public class deleteServlet extends HttpServlet {
    PostDao postDao = new PostDao();
    CategoryDao categoryDao = new CategoryDao();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("idPost"));
        List<Post> listPost = null;
        postDao.delete(id);
        try {
            listPost = postDao.selectAll();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        request.setAttribute("list", listPost);

        request.setAttribute("mess", "Xóa thành công");
        RequestDispatcher dispatcher = request.getRequestDispatcher("/articleList.jsp");
        dispatcher.forward(request,response);



    }
}
