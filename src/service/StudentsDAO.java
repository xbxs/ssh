package service;

import java.util.List;

import entity.Students;
import entity.TeacherStudents;

public interface StudentsDAO {
	//查询所有学生资料
	public List<Students> queryAllStudents();
	//查询所有学生信息带老师名
	public List<TeacherStudents> queryStudents();
	
	//根据学生编号查询学生资料
	public Students queryStudentsBySid(String sid);
	
	//添加学生资料
	public boolean addStudents(Students s);
	
	//修改学生资料 
	public boolean updateStudents(Students s);
	
	//删除学生资料
	public boolean deleteStudents(String sid);
	
	//查询同一导师的学生
	public List<Students> queryTeacherStudent(String tid);
	
	
	
}
