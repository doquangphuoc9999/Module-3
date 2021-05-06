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

@WebServlet(name = "AddUserServlet",urlPatterns = "/addUser")
public class AddUserServlet extends HttpServlet {
    CountryDao countryDao = new CountryDao();
    UserDao userDao = new UserDao();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        String gender = request.getParameter("email");
        int country = Integer.parseInt(request.getParameter("countryName"));
        Country country1 = new Country(country);
        Users users = new Users(name,age,gender,country1);

        userDao.createUsers(users);
        request.setAttribute("message","Add is success");
        RequestDispatcher dispatcher = request.getRequestDispatcher("addUser.jsp");
        dispatcher.forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Country> countryList;
        try {
            countryList = countryDao.showAllCountry();
            request.setAttribute("listCountry", countryList);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }


        RequestDispatcher dispatcher = request.getRequestDispatcher("addUser.jsp");
        dispatcher.forward(request,response);
    }
}
