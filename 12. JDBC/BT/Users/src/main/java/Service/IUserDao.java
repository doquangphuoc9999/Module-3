package Service;

import Model.Users;

import java.sql.SQLException;
import java.util.List;

public interface IUserDao {
    List<Users> SelectAllListUser() throws SQLException;

    void createUsers(Users object);

    boolean editUsers(Users object) throws SQLException;

    boolean deleteUser(Users object);

    Users findById(int id);

    List<Users> findByName(String name) throws SQLException;

}
