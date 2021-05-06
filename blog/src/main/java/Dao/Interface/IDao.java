package Dao.Interface;

import java.sql.SQLException;
import java.util.List;

public interface IDao<T> {
    List<T> selectAll() throws SQLException;

    void insert(T object);

    void update(T object);

    void delete(int id) throws SQLException;

    T findById(int id);
}
