package agenciamvc.model.interfaces;

import java.util.ArrayList;

public interface IGenericDAO<T> {
	Integer save(T obj);
    void update(T obj);
    void delete( T obj);
    void deleteById(Integer id);
    T findById(Integer id);
    ArrayList<T> findAll();
}
