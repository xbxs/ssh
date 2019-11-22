package action;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.opensymphony.xwork2.ActionContext;

import service.StudentsDAO;
import service.TeachersDAO;
import service.impl.StudentsDAOImpl;
import service.impl.TeachersDAOImpl;
import entity.Students;
import entity.TeacherStudents;
import entity.Teachers;

public class StudentsAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	
	//查询所有学生的动作
	public String query(){
		
		StudentsDAO sdao = new StudentsDAOImpl();
		
		List<TeacherStudents> list= sdao.queryStudents();
		if(list != null){
			session.setAttribute("students_list", list);
			return "queryall_success";
		}
		
		return "queryall_failure";
	
		
	}
	//添加学生
			public String add(){
				Students student  = new Students();
				
				student.setSid(request.getParameter("sid"));
				student.setSname(request.getParameter("sname"));
				student.setTid(request.getParameter("tid"));
				
				student.setSaddress(request.getParameter("saddress"));
				
				StudentsDAO studentdao = new StudentsDAOImpl();
				Students teststudent = studentdao.queryStudentsBySid(request.getParameter("sid"));
				if(teststudent == null){
					if(studentdao.addStudents(student)){
						return "add_success";
					}
				}else {
					session.setAttribute("addstudent_repeat",request.getParameter("sid")+"账号已经存在");
				}
				return "add_failure";
				
	}	
	//删除学生动作
	public String delete(){
			StudentsDAO sdao = new StudentsDAOImpl();
			String sid = request.getParameter("sid");
			sdao.deleteStudents(sid);			
			return "delete_success";
	}
	
	//修改学生资料动作
			public String modify(){
				String sid = request.getParameter("sid");

				StudentsDAO sdao = new StudentsDAOImpl();
				Students student = sdao.queryStudentsBySid(sid);
				if(student != null){
					session.setAttribute("modify_student", student);
					return "modify_success";
				}
				return "modify_failure";
				
	}
			
			//保存修改后学生的资料
	public String save(){
				
				Students student  = new Students();
				student.setSid(request.getParameter("sid"));
				student.setSname(request.getParameter("sname"));
				student.setSaddress(request.getParameter("saddress"));
				student.setTid(request.getParameter("tid"));
				
				StudentsDAO sdao = new StudentsDAOImpl();
				if(sdao.updateStudents(student)){
					return "save_success";
				}
				return "save_failure";
				
				
				
			}
}
