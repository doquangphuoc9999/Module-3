package controller.signUp;

import dao.UserDao;
import model.Users;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "SignUpServlet", urlPatterns = "/SignUp")
public class SignUpServlet extends HttpServlet {
    UserDao userDao = new UserDao();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        List<Users> userList = null;
        Users user=null;
        Users users = null;
        String fullName = request.getParameter("name");
        String userName = request.getParameter("email");
        String pass = request.getParameter("pass");
        String re_pass = request.getParameter("re_pass");

        user = new Users(userName,fullName,pass);
        try {
            users = userDao.check_nameUser(userName);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        if (pass.equals(re_pass)){
            if (users != null){
                request.setAttribute("mess", "Đã tồn tại");
                RequestDispatcher dispatcher = request.getRequestDispatcher("/SignUp");
                dispatcher.forward(request,response);
            }
            else {
                userDao.createUser(user);
                request.setAttribute("mess","Sign Up Success !!!");
                RequestDispatcher dispatcher = request.getRequestDispatcher("loginBlog/Login_v2/login.jsp");
                dispatcher.forward(request,response);
            }
        }else {
            request.setAttribute("mess", "mật khẩu không khớp");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/signUp/SignUp.jsp");
            dispatcher.forward(request,response);
        }



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        RequestDispatcher dispatcher = request.getRequestDispatcher("signUp/SignUp.jsp");
        dispatcher.forward(request,response);
    }
}
