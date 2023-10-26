package DAO.interfaces;

import java.util.ArrayList;

public interface IGenericDAO<T> {
	void create(T obj);
    void update(T obj);
    void delete(T obj);
    void deleteById(Integer id);
    T findById(Integer id);
    ArrayList<T> findAll();
}
