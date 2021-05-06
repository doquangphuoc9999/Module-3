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
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "addNoteServlet", urlPatterns = "/add")
public class addNoteServlet extends HttpServlet {
    NoteDao noteDao = new NoteDao();
    NoteTypeDao noteTypeDao = new NoteTypeDao();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String content = request.getParameter("content-body");
        Note note = new Note(title,content);

        noteDao.addNote(note);
        request.setAttribute("mess", "Thêm thành công");
        RequestDispatcher dispatcher = request.getRequestDispatcher("add.jsp");
        dispatcher.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Note> noteList = null;
        List<NoteType> noteTypeList = null;
        noteList = noteDao.selectAll();
        try {
            noteTypeList = noteTypeDao.selectAll();
            request.setAttribute("listNode",noteTypeList);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        request.setAttribute("listNote", noteList);

        RequestDispatcher dispatcher = request.getRequestDispatcher("add.jsp");
        dispatcher.forward(request,response);
    }
}
