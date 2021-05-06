package Service;

import Model.Users;

import java.sql.SQLException;
import java.util.List;

public interface IUserDao {
    List<Users> selectAllUser() throws SQLException;

    void createUser(Users object) throws SQLException;

    Users findId(int id);

    boolean editUser(Users object) throws SQLException;

    boolean deleteUser(Users object) throws SQLException;



}
