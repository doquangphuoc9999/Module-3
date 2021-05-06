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

@WebServlet(name = "EditUserServlet", urlPatterns = "/editUser")
public class EditUserServlet extends HttpServlet {
    UserDao userDao = new UserDao();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("nameUser");
        String email = request.getParameter("emailUser");
        String address = request.getParameter("address");
        Users users = new Users(id,name,email,address);

        try {
            userDao.editUser(users);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        request.setAttribute("message","Update success");
        RequestDispatcher dispatcher = request.getRequestDispatcher("editUser.jsp");
        dispatcher.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Users users = userDao.findId(id);
        request.setAttribute("user",users);
        RequestDispatcher dispatcher = request.getRequestDispatcher("editUser.jsp");
        dispatcher.forward(request,response);
    }
}
