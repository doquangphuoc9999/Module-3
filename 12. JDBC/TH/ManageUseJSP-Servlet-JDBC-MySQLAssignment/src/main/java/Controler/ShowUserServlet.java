package Controler;

import Model.Users;
import Service.UserDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ShowUserServlet", urlPatterns = "/showUser")
public class ShowUserServlet extends HttpServlet {
    UserDao userDao = new UserDao();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("listUser.jsp");
        List<Users> usersList = null;
        try {
            usersList = userDao.selectAllUser();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        request.setAttribute("user",usersList);
        dispatcher.forward(request,response);
    }
}
