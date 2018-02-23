package com.limn.update.server.dao.impl;

import com.limn.update.server.dao.BaseDao;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.util.List;

/**
 * Created by limengnan on 2017/11/30.
 */


@Transactional
public class BaseDaoImpl<T> implements BaseDao<T>{

    private BaseDao<T> dao;
    @Autowired
    public void setDao(BaseDao<T> dao) {
        this.dao = dao;
    }

    @Autowired
    private SessionFactory sessionFactory;


    protected Session getSession() {
        return this.sessionFactory.getCurrentSession();
    }


    @Override
    public List findAll() {
        return null;
    }

    @Override
    public void persist(Object entity) {

    }

    @Override
    public void save(Object entity) {
        Session newSeesion = getSession();
        Serializable id =  newSeesion.save(entity);
        System.out.println(id);
    }

    @Override
    public void saveOrUpdate(Object entity) {
        Session newSeesion = getSession();
        newSeesion.saveOrUpdate(entity);

    }


    @Override
    public void merge(Object entity) {
        Session newSeesion = getSession();
        newSeesion.merge(entity);

    }



    public void update(Object entity) {
        Session newSeesion = getSession();
        newSeesion.update(entity);

    }

    @Override
    public void flush() {
        getSession().flush();
    }

}
