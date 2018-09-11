package br.com.fiap.jpa.dao.impl;

import java.lang.reflect.ParameterizedType;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import br.com.fiap.jpa.dao.GenericDAO;
import br.com.fiap.jpa.exception.CommitException;
import br.com.fiap.jpa.exception.KeyNotFoundException;

public class GenericDAOImpl<T,K> 
						implements GenericDAO<T, K>{

	//não precisamos mais instanciar o EntityManager
	@PersistenceContext
	private EntityManager em;
	
	private Class<T> clazz;
	
	@SuppressWarnings("unchecked")
	public GenericDAOImpl() {
		clazz = (Class<T>) ((ParameterizedType) 
			getClass().getGenericSuperclass())
						.getActualTypeArguments()[0];
	}
	
	@Override
	public void create(T entity) {
		em.persist(entity);
	}

	@Override
	public T read(K id) {
		return em.find(clazz, id);
	}

	@Override
	public void update(T entity) {
		em.merge(entity);
	}

	@Override
	public void delete(K id) throws KeyNotFoundException {
		T entity = read(id);
		if (entity == null) {
			throw new KeyNotFoundException();
		}
		em.remove(entity);
	}

	@Override
	public List<T> list() {
		return em.createQuery("from "+ clazz.getName(),clazz).getResultList();
	}

}
