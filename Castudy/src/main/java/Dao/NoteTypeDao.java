package Dao;

import Model.NoteType;
import Service.ConService;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NoteTypeDao implements IDao<NoteType> {
    ConService conService = new ConService();
    private final String SELECT_NOTE_TYPE = "SELECT * FROM  note_type";
    @Override
    public List<NoteType> selectAll() throws SQLException {
        List<NoteType> list = new ArrayList<>();
        try
        (
                PreparedStatement preparedStatement = conService.getConnection().prepareStatement(SELECT_NOTE_TYPE);
                ResultSet resultSet = preparedStatement.executeQuery();
                )
        {
            while (resultSet.next()){
                int id = resultSet.getInt("idNote_type");
                String nameNote = resultSet.getString("nameNote");
                String descriptionNote = resultSet.getString("descriptionNote");

                NoteType noteType = new NoteType(id,nameNote,descriptionNote);

                list.add(noteType);
            }
        }
        return list;
    }

    @Override
    public boolean addNote(NoteType object) {
        return false;
    }

    @Override
    public boolean update(NoteType object) {
        return false;
    }

    @Override
    public boolean delete(int object) {
        return false;
    }


    @Override
    public NoteType findById(int id) {
        return null;
    }

    @Override
    public NoteType findByTitle(String title) {
        return null;
    }
}
