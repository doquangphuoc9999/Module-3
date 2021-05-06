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

@WebServlet(name = "deleteNoteServlet", urlPatterns = "/deleteNote")
public class deleteNoteServlet extends HttpServlet {
    NoteDao noteDao = new NoteDao();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Note> note = null;
        int id = Integer.parseInt(request.getParameter("idNote"));

        noteDao.delete(id);

        note = noteDao.selectAll();
        request.setAttribute("listNote", note);
        RequestDispatcher dispatcher = request.getRequestDispatcher("listNote.jsp");
        dispatcher.forward(request,response);
    }
}
