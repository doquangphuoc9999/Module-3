package Controller;

import Dao.NoteDao;
import Dao.NoteTypeDao;
import Model.Note;
import Model.NoteType;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ListOfNotesServlet", urlPatterns = "/list")
public class ListOfNotesServlet extends HttpServlet {
    NoteDao noteDao = new NoteDao();
    NoteTypeDao noteTypeDao = new NoteTypeDao();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Note> list = null;
        List<NoteType> noteTypeList = null;
        try {
            noteTypeList = noteTypeDao.selectAll();
            request.setAttribute("listNotetype", noteTypeList);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        list = noteDao.selectAll();

        request.setAttribute("listNote",list);

        RequestDispatcher dispatcher = request.getRequestDispatcher("listNote.jsp");
        dispatcher.forward(request,response);





    }
}
