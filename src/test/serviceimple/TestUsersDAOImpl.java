package test.serviceimple;

import junit.framework.Assert;

import org.junit.Test;

import service.UsersDAO;
import service.impl.UsersDAOImpl;
import entity.Users;


public class TestUsersDAOImpl {

	@Test
	public void testUsersLogin(){
		Users u = new Users(1,"lisi","123456");
		UsersDAO udao = new UsersDAOImpl();
		Assert.assertEquals(true, udao.userLogin(u));
	}
}
