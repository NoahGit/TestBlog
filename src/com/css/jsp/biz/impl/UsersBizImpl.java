package com.css.jsp.biz.impl;

import com.css.jsp.biz.UsersBiz;
import com.css.jsp.dao.UsersDAO;
import com.css.jsp.dao.impl.UsersDAOImpl;
import com.css.jsp.entity.Users;

public class UsersBizImpl implements UsersBiz {
	UsersDAO ud=new UsersDAOImpl();
	@Override
	public int add(Users users) {
		return ud.add(users);
	}
	@Override
	public Users login(String userName, String userPwd) {
		return ud.login(userName, userPwd);
	}
	@Override
	public int update(Users users) {
		return ud.update(users);
	}
	@Override
	public Users findById(int id) {
		return ud.findById(id);
	}
	@Override
	public int Rename(String userName) {
		return ud.Rename(userName);
	}
	@Override
	public Users findByName(String userName) {
		return ud.findByName(userName);
	}

}
