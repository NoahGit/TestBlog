package com.css.jsp.test;

import com.css.jsp.biz.UsersBiz;
import com.css.jsp.biz.impl.UsersBizImpl;
import com.css.jsp.entity.Users;

public class UsersTest {
	public static void main(String[] args) {
		UsersBiz ub = new UsersBizImpl();
		Users users = ub.login("sanzi", "123456");
		System.out.println(users.getUserName());
		Users us = new Users("dsf","3333","ddff");
		int i = ub.add(us);
		System.out.println(i);
	}
	
}
