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

@WebServlet(name = "AddUserServlet", urlPatterns = "/createUser")
public class AddUserServlet extends HttpServlet {
    UserDao userDao = new UserDao();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("nameUser");
        String email = request.getParameter("emailUser");
        String address = request.getParameter("nameUser");

        Users users = new Users(name,email,address);
        try {
            userDao.createUser(users);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        request.setAttribute("message","Add is success");
        RequestDispatcher dispatcher = request.getRequestDispatcher("addUser.jsp");
        dispatcher.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("addUser.jsp");

        dispatcher.forward(request,response);
    }
}
