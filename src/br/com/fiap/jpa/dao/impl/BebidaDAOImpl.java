package br.com.fiap.jpa.dao.impl;

import org.springframework.stereotype.Repository;

import br.com.fiap.jpa.dao.BebidaDAO;
import br.com.fiap.spring.model.Bebida;

@Repository
public class BebidaDAOImpl 
			extends GenericDAOImpl<Bebida,Integer> implements BebidaDAO{

}