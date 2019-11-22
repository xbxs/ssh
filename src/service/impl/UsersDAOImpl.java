package service.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import service.UsersDAO;
import data.HibernateSessionFactory;
import entity.Users;

public class UsersDAOImpl implements UsersDAO {

	public boolean userLogin(Users u) {
		Transaction tx = null;
		String sql = "";
		
		try{
			Session session = HibernateSessionFactory.getSessionFactory().openSession();
			sql = "from Users where username = ? and password =?";
			tx = session.beginTransaction();
			Query query = session.createQuery(sql);
			query.setParameter(0,u.getUsername());
			query.setParameter(1,u.getPassword());
			List list = query.list();
			tx.commit();
			if(list.size() > 0){
				return true;
			}else{
				return false;
			}
		}catch(Exception ex){
			ex.printStackTrace();
			return false;
		}finally{
			if(tx != null){
				tx = null;
			}
		}
	}

	public boolean updateUsers(Users u) {
		Transaction tx = null;
		try{
			Session session  = HibernateSessionFactory.getSessionFactory().openSession();
			tx = session.beginTransaction();
			session.update(u);
			tx.commit();
			return true;
		}catch(Exception e){
			e.printStackTrace();
			tx.commit();
			return false;
		}finally{
			if(tx != null){
				tx = null;
			}
		}
	}

}
