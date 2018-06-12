package com.css.jsp.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.css.jsp.comm.BaseDAO;
import com.css.jsp.dao.PhotoGroupDAO;
import com.css.jsp.entity.PhotoGroup;

public class PhotoGroupDAOImpl implements PhotoGroupDAO {
	BaseDAO bd=new BaseDAO();
	public List<PhotoGroup> findByUserId(int userId) {
		List<PhotoGroup> list=new ArrayList<PhotoGroup>();
		String sql="select pg_id,userid,pg_name from photo_group where userid=? order by pg_id";
		Object[] values={userId};
		ResultSet rs=bd.executeQuery(sql, values);
		try {
			while(rs.next()){
				PhotoGroup photogroup=new PhotoGroup(rs.getInt("pg_id"),rs.getInt("userid"),rs.getString("pg_name"));
				list.add(photogroup);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			bd.closeAll();
		}
		return list;
	}
	public int add(PhotoGroup photoGroup) {
		String sql="insert into photo_group(userid,pg_name) values(?,?)";
		Object[] values={photoGroup.getUserId(),photoGroup.getPgName()};
		return bd.executeUpdate(sql, values);
	}
	public int update(PhotoGroup photoGroup) {
		String sql="update photo_group set pg_name=? where pg_id=?";
		Object[] values={photoGroup.getPgName(),photoGroup.getPgId()};
		return bd.executeUpdate(sql, values);
	}
	public int delete(int id) {
		String sql="delete photo_group where pg_id=?";
		Object[] values={id};
		return bd.executeUpdate(sql, values);
	}
	public PhotoGroup findById(int id) {
		PhotoGroup photoGroup=null;
		String sql="select * from photo_group where pg_id=?";
		Object[] values={id};
		ResultSet rs=bd.executeQuery(sql, values);
		try {
			while(rs.next()){
				photoGroup=new PhotoGroup(rs.getInt("pg_id"),rs.getInt("userid"),rs.getString("pg_name"));
			}
			return photoGroup;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			bd.closeAll();
		}
		return photoGroup;
	}
	
}