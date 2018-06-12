package com.css.jsp.dao;

import com.css.jsp.entity.Users;

public interface UsersDAO {
	public int add(Users users);  //添加，用户注册
	public Users login(String userName,String userPwd);  //用户登录
	public int update(Users users);   //修改用户信息
	public Users findById(int id);   //根据用户id查询用户信息
	public Users findByName(String userName);    //根据用户名称查询用户信息
	public int Rename(String userName);   //判断用户名是否重复
}
