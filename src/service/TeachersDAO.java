package service;

import java.util.List;

import entity.Students;
import entity.Teachers;

public interface TeachersDAO {
	//查询所有教师资料
	public List<Teachers> queryAllTeachers();
	
	//根据教师编号查询教师资料
	public Teachers queryTeachersBySid(String tid);
	
	//添加教师资料
	public boolean addTeachers(Teachers t);
	
	//修改教师资料 
	public boolean updateTeachers(Teachers t);
	
	//删除教师资料
	public boolean deleteTeachers(String tid);
	
}
