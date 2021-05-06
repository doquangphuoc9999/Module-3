package Controller;

import Model.Country;
import Model.Users;
import Service.CountryDao;
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

@WebServlet(name = "EditUserServlet",urlPatterns = "/editUser")
public class EditUserServlet extends HttpServlet {
    UserDao userDao = new UserDao();
    CountryDao countryDao = new CountryDao();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        String gmail = request.getParameter("email");
        int country = Integer.parseInt(request.getParameter("countryName"));
        Country country1 = new Country(country);
        Users users = new Users(id,name,age,gmail,country1);

        try {
            userDao.editUsers(users);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        request.setAttribute("message","Update success");
        RequestDispatcher dispatcher = request.getRequestDispatcher("editUser.jsp");
        dispatcher.forward(request,response);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Users users = userDao.findById(id);
        request.setAttribute("edit",users);
        List<Country> countryList = null;
        try {
            countryList = countryDao.showAllCountry();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
            request.setAttribute("list",countryList);
            RequestDispatcher dispatcher = request.getRequestDispatcher("editUser.jsp");
            dispatcher.forward(request,response);




    }
}
