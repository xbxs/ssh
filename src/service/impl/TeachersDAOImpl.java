package service.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import service.TeachersDAO;
import data.HibernateSessionFactory;
import entity.Teachers;

public class TeachersDAOImpl implements TeachersDAO {

	public List<Teachers> queryAllTeachers() {
		// TODO Auto-generated method stub
		
		Transaction tx = null;
		List<Teachers> list =null;
		String sql = "";
		
		try{
			Session session  = HibernateSessionFactory.getSessionFactory().openSession();
			tx = session.beginTransaction();
			sql = "from Teachers";
			Query query = session.createQuery(sql);
			list = query.list();
			tx.commit();
			return list;
		}catch(Exception e){
			e.printStackTrace();
			tx.commit();
			return list;
		}finally{
			if(tx != null){
				tx = null;
			}
		}
		
	}

	public Teachers queryTeachersBySid(String sid) {
		Transaction tx = null;
		Teachers student = null;
		
		
		try{
			Session session  = HibernateSessionFactory.getSessionFactory().openSession();
			tx = session.beginTransaction();
			student = (Teachers)session.get(Teachers.class,sid);
			tx.commit();
			return student;
		}catch(Exception e){
			e.printStackTrace();
			tx.commit();
			return student;
		}finally{
			if(tx != null){
				tx = null;
			}
		}
	}

	public boolean addTeachers(Teachers t) {
		
		Transaction tx = null;
		try{
			Session session  = HibernateSessionFactory.getSessionFactory().openSession();
			tx = session.beginTransaction();
			session.save(t);
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

	public boolean updateTeachers(Teachers t) {
		Transaction tx = null;
		try{
			Session session  = HibernateSessionFactory.getSessionFactory().openSession();
			tx = session.beginTransaction();
			session.update(t);
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

	public boolean deleteTeachers(String tid) {
		// TODO Auto-generated method stub
		Transaction tx = null;
		
		try{
			Session session  = HibernateSessionFactory.getSessionFactory().openSession();
			tx = session.beginTransaction();
			Teachers t = (Teachers)session.get(Teachers.class, tid);
			session.delete(t);
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
