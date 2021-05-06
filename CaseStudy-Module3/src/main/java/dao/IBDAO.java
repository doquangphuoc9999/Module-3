package dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public interface IBDAO<T> {
    List<T> selectAll() throws SQLException;

    void insert(T object) throws SQLException;
    void Save(T object) throws SQLException;
    T findById(int id) throws SQLException;

    boolean delete(int id) throws SQLException;

    boolean update(T object) throws SQLException;

    public ArrayList<T> getListByPage(ArrayList<T> arr,int star, int end);
}
