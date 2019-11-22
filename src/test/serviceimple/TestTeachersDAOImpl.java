package test.serviceimple;

import java.util.List;

import org.junit.Test;

import service.TeachersDAO;
import service.impl.TeachersDAOImpl;
import entity.Teachers;

public class TestTeachersDAOImpl {

	@Test
	public void testQueryAllTeachers(){
		TeachersDAO sdao = new TeachersDAOImpl();
		List<Teachers> list  = sdao.queryAllTeachers();
		
		for(int i= 0;i<list.size();i++){
			System.out.println(list.get(i));
		}
	}
}
