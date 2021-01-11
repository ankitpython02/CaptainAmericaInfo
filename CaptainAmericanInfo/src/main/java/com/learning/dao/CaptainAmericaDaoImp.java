package com.learning.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.learning.entities.Captains;


@Repository
public class CaptainAmericaDaoImp implements CaptainAmericaDao {

	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	//Saving Captains
	@Transactional
	public boolean save(Captains captains) {
		Boolean f = false;
		Session session = this.sessionFactory.openSession();
		Transaction trans = session.beginTransaction();
		try {
			session.save(captains);
			trans.commit();
			session.close();
			f = true;
		} catch (Exception e) {
			trans.rollback();
			session.close();
			e.printStackTrace();

		}
		return f;
	}

	public List<Captains> getCaptains() {
		List<Captains> list = new ArrayList<Captains>();
		Session session = this.sessionFactory.openSession();
		Transaction trans = session.beginTransaction();
		String sqlString = "select c.* from CAPTAIN_DETAIL c";
		try
		{
			SQLQuery query = session.createSQLQuery(sqlString);
			query.addEntity(Captains.class);
			List<Captains> captains = query.list();
			for (Captains cap : captains) {
				list.add(cap);
			}
		}
		catch (Exception e) 
		{
			trans.rollback();
			session.close();
			e.printStackTrace();
		}
		return list;
	}

}