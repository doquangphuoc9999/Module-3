package Service;

import Model.Country;

import java.sql.SQLException;
import java.util.List;

public interface ICountry {
    List<Country> showAllCountry() throws SQLException;

    void createCountry(Country object);

    Country findByName(String name);
}
