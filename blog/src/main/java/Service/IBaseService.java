package Service;

import Model.Post;

import java.sql.SQLException;
import java.util.List;

public interface IBaseService<T> {
    List<T> selectAll() throws SQLException;

    void insert(T object);

    void update(T object);

    void delete(int id);

    T findById(int id);

}
