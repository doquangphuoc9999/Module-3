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
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "InsertPostServlet", urlPatterns = "/addPost")
public class InsertPostServlet extends HttpServlet {
    List<Category> list;
    PostDao postDao = new PostDao();
    CategoryDao categoryDao = new CategoryDao();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String shortContent = request.getParameter("shortContent");
        String content = request.getParameter("content");
        String image = request.getParameter("img");
        int id = Integer.parseInt(request.getParameter("category"));
        Category category = new Category(id);


        Post post = new Post(title,shortContent,content,image,category);
        postDao.insert(post);
        try {
            list = categoryDao.selectAll();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        request.setAttribute("listCategory", list);
        request.setAttribute("messSuccess", "Thêm mới thành công");
        RequestDispatcher dispatcher = request.getRequestDispatcher("addPost.jsp");
        dispatcher.forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        try {
            list = categoryDao.selectAll();
            request.setAttribute("listCategory", list);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("addPost.jsp");
        dispatcher.forward(request,response);
    }
}
