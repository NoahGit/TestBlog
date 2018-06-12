package com.css.jsp.biz;

import com.css.jsp.entity.Users;

public interface UsersBiz {
	//注册
	public int add(Users users);
	//登录
	public Users login(String userName,String userPwd);
	//修改个人信息
	public int update(Users users);
	//根据用户id查询用户信息
	public Users findById(int id);
	//根据用户名称查询用户信息
	public Users findByName(String userName);
	//判断用户名是否重复
	public int Rename(String userName);   
}


