package test.serviceimple;

import java.util.List;

import org.junit.Test;

import service.StudentsDAO;
import service.impl.StudentsDAOImpl;
import entity.Students;
import entity.TeacherStudents;

public class TestStudentsDAOImpl {

	
	public void testQueryAllStudents(){
		StudentsDAO sdao = new StudentsDAOImpl();
		List<Students> list  = sdao.queryAllStudents();
		
		for(int i= 0;i<list.size();i++){
			System.out.println(list.get(i));
		}
	}
	
}
