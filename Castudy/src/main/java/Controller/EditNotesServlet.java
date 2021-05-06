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

@WebServlet(name = "EditNotesServlet", urlPatterns = "/editNote")
public class EditNotesServlet extends HttpServlet {
    NoteDao noteDao = new NoteDao();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("idNote"));
        String title = request.getParameter("title");
        String content = request.getParameter("content-body");
        Note note = new Note(id,title,content);

        noteDao.update(note);
        request.setAttribute("mess","Cập nhật thành công");
        RequestDispatcher dispatcher = request.getRequestDispatcher("edit.jsp");
        dispatcher.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Note note = null;
        int id = Integer.parseInt(request.getParameter("idNote"));
        note = noteDao.findById(id);

        request.setAttribute("list", note);
        RequestDispatcher dispatcher = request.getRequestDispatcher("edit.jsp");
        dispatcher.forward(request,response);


    }
}
