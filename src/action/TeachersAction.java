package action;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import service.StudentsDAO;
import service.TeachersDAO;
import service.TeachersDAO;
import service.TeachersDAO;
import service.impl.StudentsDAOImpl;
import service.impl.TeachersDAOImpl;
import service.impl.TeachersDAOImpl;
import service.impl.TeachersDAOImpl;
import entity.Students;
import entity.Teachers;
import entity.Teachers;
import entity.Teachers;

public class TeachersAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	
	//查询所有教师的动作
	public String query(){
		TeachersDAO sdao = new TeachersDAOImpl();
		
		List<Teachers> list= sdao.queryAllTeachers();
		if(list != null){
			session.setAttribute("teachers_list", list);
			return "queryall_success";
		}
		
		return "queryall_failure";
		
	}
	
	//查询教师个人信息
	public String queryTeacherById(){
		String tid = request.getParameter("tid");
		TeachersDAO sdao = new TeachersDAOImpl();
		
		Teachers teacher = sdao.queryTeachersBySid(tid);
		if(teacher != null){
			session.setAttribute("teacher", teacher);
			return "queryteacher_success";
		}
		return "queryteacher_failure";
	}
	
	
	//修改教师资料动作
		public String modify(){
			String sid = request.getParameter("tid");

			TeachersDAO sdao = new TeachersDAOImpl();
			Teachers teacher = sdao.queryTeachersBySid(sid);
			if(teacher != null){
				session.setAttribute("modify_teachers", teacher);
				return "modify_success";
			}
			return "modify_failure";
			
		}
		
	//添加教师
		public String add(){
			Teachers teacher  = new Teachers();
			teacher.setTid(request.getParameter("tid"));
			teacher.setTname(request.getParameter("tname"));
			teacher.setTposition(request.getParameter("tposition"));
			teacher.setTsubject(request.getParameter("tsubject"));
			
			
			TeachersDAO teachersdao = new TeachersDAOImpl();
			
			
			Teachers testTeacher = teachersdao.queryTeachersBySid(request.getParameter("tid"));
			if(testTeacher == null){
				if(teachersdao.addTeachers(teacher)){
					return "add_success";
				}
			}else{
				session.setAttribute("addteacher_repeat",request.getParameter("tid")+"账号已经存在");
			}			
			return "add_failure";
			
		}	
		
		//删除教师动作
		public String delete(){
			TeachersDAO tdao = new TeachersDAOImpl();
			String tid = request.getParameter("tid");
			StudentsDAO sDAO = new StudentsDAOImpl();
			List<Students> list = sDAO.queryTeacherStudent(tid);
			if(list.size() > 0){
				session.setAttribute("teacher_delete", "老师还有"+list.size()+"个指导学生，请先处理学生信息");
				session.setAttribute("teacher_deleteid", tid);
			}else{
				tdao.deleteTeachers(tid);
			}
			
			return "delete_success";
		}
		
		//保存修改后教师的资料
		public String save(){
			
			Teachers teacher  = new Teachers();
			teacher.setTid(request.getParameter("tid"));
			teacher.setTname(request.getParameter("tname"));
			teacher.setTposition(request.getParameter("tposition"));
			teacher.setTsubject(request.getParameter("tsubject"));
			
			TeachersDAO tdao = new TeachersDAOImpl();
			tdao.updateTeachers(teacher);
			
			return "save_success";
		}
		
		public String queryTeacherStudents(){
			String tid = request.getParameter("tid");
			
			StudentsDAO sDAO = new StudentsDAOImpl();
			
			List<Students> list = sDAO.queryTeacherStudent(tid);
			
			if(list != null){
				session.setAttribute("teacherstudents_list", list);
				return "queryteacherstudents_success";
			}
			
			return "queryall_failure";
		}
}
