package Dao;

import java.sql.SQLException;
import java.util.List;

public interface IDao<T> {
    List<T> selectAll() throws SQLException;

    boolean addNote(T object);

    boolean update(T object);

    boolean delete(int object);

    T findById(int id);

    T findByTitle(String title);
}
