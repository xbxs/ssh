package service.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import service.StudentsDAO;
import data.HibernateSessionFactory;
import entity.Students;
import entity.TeacherStudents;

public class StudentsDAOImpl implements StudentsDAO {

	public List<Students> queryAllStudents() {
		// TODO Auto-generated method stub
		
		Transaction tx = null;
		List<Students> list =null;
		String sql = "";
		
		try{
			Session session  = HibernateSessionFactory.getSessionFactory().openSession();
			tx = session.beginTransaction();
			sql = "from Students";
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

	public Students queryStudentsBySid(String sid) {
		Transaction tx = null;
		Students student = null;
		
		
		try{
			Session session  = HibernateSessionFactory.getSessionFactory().openSession();
			tx = session.beginTransaction();
			student = (Students)session.get(Students.class,sid);
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

	public boolean addStudents(Students s) {
		
		Transaction tx = null;
		try{
			Session session  = HibernateSessionFactory.getSessionFactory().openSession();
			tx = session.beginTransaction();
			session.save(s);
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

	public boolean updateStudents(Students s) {
		Transaction tx = null;
		try{
			Session session  = HibernateSessionFactory.getSessionFactory().openSession();
			tx = session.beginTransaction();
			session.update(s);
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

	public boolean deleteStudents(String sid) {
		// TODO Auto-generated method stub
		Transaction tx = null;
		
		try{
			Session session  = HibernateSessionFactory.getSessionFactory().openSession();
			tx = session.beginTransaction();
			Students s = (Students)session.get(Students.class, sid);
			session.delete(s);
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
	
	public List<Students> queryTeacherStudent(String tid){
		Transaction tx = null;
		List<Students> list =null;
		String sql = "";
		
		try{
			Session session  = HibernateSessionFactory.getSessionFactory().openSession();
			tx = session.beginTransaction();
			sql = "from Students where tid = ?";
			Query query = session.createQuery(sql);
			query.setParameter(0, tid);
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

	public List<TeacherStudents> queryStudents() {
		Transaction tx = null;
		List<TeacherStudents> list =null;
		String sql = "select new entity.TeacherStudents(s.sid,s.sname,s.saddress,t.tname,t.tid)from Students as s,Teachers as t where s.tid = t.tid";
		
		try{
			Session session  = HibernateSessionFactory.getSessionFactory().openSession();
			tx = session.beginTransaction();
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
	
	

}
