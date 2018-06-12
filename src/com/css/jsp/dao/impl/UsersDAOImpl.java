package com.css.jsp.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.css.jsp.comm.BaseDAO;
import com.css.jsp.dao.UsersDAO;
import com.css.jsp.entity.Users;

public class UsersDAOImpl implements UsersDAO {
	BaseDAO bd=new BaseDAO();
	@Override
	public int add(Users users) {
		String sql="insert into users(username,userpwd,label) values(?,?,?)";
		Object[] values={users.getUserName(),users.getUserPwd(),users.getlabel()};
		return bd.executeUpdate(sql, values);
	}
	@Override
	public int update(Users users) {
		String sql="update users set username=?,userpwd=?,label=? where userid=?";
		Object[] values={users.getUserName(),users.getUserPwd(),users.getlabel(),users.getUserId()};
		return bd.executeUpdate(sql, values);
	}
	@Override
	public Users login(String userName, String userPwd) {
		Users users=null;
		String sql="select userid,username,userpwd from users where username=? and userpwd=?";
		Object[] values={userName,userPwd};
		ResultSet rs=bd.executeQuery(sql, values);
		try {
			while(rs.next()){
				users=new Users(rs.getInt("userid"),rs.getString("username"),rs.getString("userpwd"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			bd.closeAll();
		}
		return users;
	}
	@Override
	public Users findById(int id) {
		Users users=null;
		String sql="select userid,username,userpwd,label from users where userid="+id;
		ResultSet rs=bd.executeQuery(sql, null);
		try {
			while(rs.next()){
				users=new Users(rs.getInt("userid"),rs.getString("username"),rs.getString("userpwd"),rs.getString("label"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			bd.closeAll();
		}
		return users;
	}
	@Override
	public int Rename(String userName) {
		int i = 0;
		String sql="select count(*) from users where username=?";
		Object[] values={userName};
		ResultSet rs=bd.executeQuery(sql, values);
		try {
			rs.next();
			i=rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}

	@Override
	public Users findByName(String userName) {
		Users users=null;
		String sql="select userid,username,userpwd,label from users where username=?";
		Object[] values={userName};
		ResultSet rs=bd.executeQuery(sql, values);
		try {
			while(rs.next()){
				users=new Users(rs.getInt("userid"),rs.getString("username"),rs.getString("userpwd"),rs.getString("label"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			bd.closeAll();
		}
		return users;
	}
}
