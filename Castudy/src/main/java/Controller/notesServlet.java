package Controller;

import Dao.NoteDao;
import Model.Note;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "notesServlet", urlPatterns = "/notes")
public class notesServlet extends HttpServlet {
    NoteDao noteDao = new NoteDao();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        Note list = null;

        list =  noteDao.findByTitle(title);

        request.setAttribute("listNotes",list);

        RequestDispatcher dispatcher = request.getRequestDispatcher("notes.jsp");
        dispatcher.forward(request,response);
    }
}
