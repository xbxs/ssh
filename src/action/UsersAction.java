package action;

import org.apache.struts2.interceptor.validation.SkipValidation;

import service.UsersDAO;
import service.impl.UsersDAOImpl;

import com.opensymphony.xwork2.ModelDriven;

import entity.Users;

public class UsersAction extends BaseAction implements ModelDriven<Users> {
	
	private static final long serialVersionUID = 1L;
	public Users user = new Users();
	public Users getModel() {
		return this.user;
	}
//	用户登录的方法
	public String login(){
		UsersDAO udao = new UsersDAOImpl();
		if(udao.userLogin(user)){
			session.setAttribute("loginUserName", user.getUsername());
			session.setAttribute("loginUserPassword", user.getPassword());
			return "login_success";
		}else{
			return "login_failure";
		}
	}
	
	@Override
	public void validate() {
		if("".equals(user.getUsername().trim())){
			this.addFieldError("usernameError", "用户名不能为空");
		}
		
		if("".equals(user.getPassword().trim())){
			this.addFieldError("userpasswordError", "密码不能为空");
		}
	}
	//用户注销方法
	@SkipValidation
	public String loginout(){
		if(session.getAttribute("loginUserName") != null){
			session.removeAttribute("loginUserName");
		}
		
		return "loginout_success";
	}
	
	//修改密码的方法
		@SkipValidation
		public String modifypassword(){
			UsersDAO userdao = new UsersDAOImpl();
			String old_password = request.getParameter("old_password");
			String name = (String) session.getAttribute("loginUserName");
			Users user = new Users(1,name,old_password);
			if(!userdao.userLogin(user)){
				this.addFieldError("user_oldpassword", "旧密码错误");
				return "modifypassword_failure";
			}
			
			String new_password = request.getParameter("new_password");
			String confirm_password = request.getParameter("confirm_password");
			
			if(!new_password.equals(confirm_password)){
				this.addFieldError("user_newpassword", "两次输入的密码不一致");
				return "modifypassword_failure";
			}
			if(userdao.userLogin(user) && new_password.equals(confirm_password)){
				user.setPassword(new_password);
				userdao.updateUsers(user);
				return "modifypassword_success";
			}
			
			return "modifypassword_failure";
			
		}
}
