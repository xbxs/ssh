package service;

import entity.Users;

public interface UsersDAO {
	//登录
	public boolean userLogin(Users u);
	//修改管理员密码 
	public boolean updateUsers(Users u);
}
