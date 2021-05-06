package Controller;

import Dao.CategoryDao;
import Dao.PostDao;
import Model.Category;
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

@WebServlet(name = "editListServlet", urlPatterns = "/editList")
public class editListServlet extends HttpServlet {
    PostDao postDao = new PostDao();
    CategoryDao categoryDao = new CategoryDao();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idPost = Integer.parseInt(request.getParameter("id"));
        String title = request.getParameter("title");
        String shortContent = request.getParameter("shortContent");
        String content = request.getParameter("content");
        String image = request.getParameter("img");
        int id = Integer.parseInt(request.getParameter("category"));
        Category category = new Category(id);
        Post post = new Post(idPost,title,shortContent,content,image,category);

        postDao.update(post);
        request.setAttribute("messSuccess","Sửa thành công");
        RequestDispatcher dispatcher = request.getRequestDispatcher("edit.jsp");
        dispatcher.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Post post = null;
        int id= Integer.parseInt(request.getParameter("idPost"));
        post = postDao.findById(id);

        request.setAttribute("edit",post);
        List<Category> categories = null;
        try {
            categories =  categoryDao.selectAll();
            request.setAttribute("DBlistCategory",categories);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("edit.jsp");
        dispatcher.forward(request,response);
    }
}
