package Dao;

import Model.Note;
import Model.NoteType;
import Service.ConService;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class NoteDao implements IDao<Note> {
    ConService conService = new ConService();
    private static final String SELECT_NOTE = "SELECT note.*,note_type.nameNote as name_type FROM note LEFT JOIN  note_type ON note.idNote = note_type.idNote_type";
    private static final String ADD_NOTE = "INSERT INTO note(title, content) VALUES (?, ?)";
    private static final String UPDATE_NOTE = "UPDATE note SET title = ?, content = ? WHERE idNote = ?";
    private static final String FIND_BY_ID = "SELECT * FROM  note WHERE idNote = ?";
    private static final String DELETE_NOTE = "DELETE FROM note WHERE idNote = ?";
    private static final String FIND_BY_TITLE = "SELECT * FROM  note WHERE title = ?";

    @Override
    public List<Note> selectAll() {
        List<Note> list = new ArrayList<>();
        try
        (
            PreparedStatement statement = conService.getConnection().prepareStatement(SELECT_NOTE);
            ResultSet resultSet = statement.executeQuery();
                )
        {
            while (resultSet.next()){
                int id=resultSet.getInt("idNote");
                String title = resultSet.getString("title");
                String content = resultSet.getString("content");
                int idNote_type = resultSet.getInt("idNote_type");

                NoteType noteType = new NoteType(idNote_type);
                Note note = new Note(id,title,content,noteType);
                list.add(note);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return list;
    }

    @Override
    public boolean addNote(Note object) {
        try(
                PreparedStatement preparedStatement = conService.getConnection().prepareStatement(ADD_NOTE);
                )
        {
          preparedStatement.setString(1,object.getTitle());
          preparedStatement.setString(2,object.getContent());

          preparedStatement.executeUpdate();
          return true;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean update(Note object) {
        try
                (
                        PreparedStatement preparedStatement = conService.getConnection().prepareStatement(UPDATE_NOTE)
                        )
        {
            preparedStatement.setString(1,object.getTitle());
            preparedStatement.setString(2,object.getContent());
            preparedStatement.setInt(3,object.getIdNote());

            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(int object) {
        try
                (
                        PreparedStatement preparedStatement = conService.getConnection().prepareStatement(DELETE_NOTE);
                        )
        {
            preparedStatement.setInt(1,object);
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public Note findById(int id) {
        Note list = null;
        try
                (
                        PreparedStatement preparedStatement = conService.getConnection().prepareStatement(FIND_BY_ID)
                        )
        {
            preparedStatement.setInt(1,id);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                int idNote = resultSet.getInt("idNote");
                String title = resultSet.getString("title");
                String content = resultSet.getString("content");
                int idNote_type = resultSet.getInt("idNote_type");
                NoteType noteType = new NoteType(idNote_type);
                list = new Note(idNote,title,content,noteType);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return list;
    }

    @Override
    public Note findByTitle(String title) {
        Note list = null;
        try
                (
                        PreparedStatement preparedStatement = conService.getConnection().prepareStatement(FIND_BY_TITLE);
                        ResultSet resultSet = preparedStatement.executeQuery();
                        )
        {
            while (resultSet.next()){
                int idNote = resultSet.getInt("idNote");
                String titleName = resultSet.getString("title");
                String content = resultSet.getString("content");
                int idNote_type = resultSet.getInt("idNote_type");
                NoteType noteType = new NoteType(idNote_type);

                list = new Note(idNote,titleName,content,noteType);


            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return list;
    }
}
