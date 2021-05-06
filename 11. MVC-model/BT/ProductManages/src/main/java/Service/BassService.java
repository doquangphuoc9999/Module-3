package Service;

import java.util.List;

public interface BassService<T> {
    List<T> findAll();

    void save(T object);

    void update(T object);

    T findById(int id);

    void delete(int id);

    T findByName(String name);
}
