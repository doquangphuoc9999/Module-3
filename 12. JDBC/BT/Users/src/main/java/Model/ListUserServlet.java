package Model;

import Service.UserDao;

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

@WebServlet(name = "ListUserServlet", urlPatterns = "/user")
public class ListUserServlet extends HttpServlet {
    UserDao userDao = new UserDao();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Users> usersList;
        try {
            usersList = userDao.SelectAllListUser();
            request.setAttribute("listUser",usersList);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }


        RequestDispatcher dispatcher = request.getRequestDispatcher("listUser.jsp");
        dispatcher.forward(request,response);
    }
}
