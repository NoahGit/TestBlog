package com.css.jsp.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.css.jsp.comm.BaseDAO;
import com.css.jsp.dao.PhotoDAO;
import com.css.jsp.entity.Photo;

public class PhotoDAOImpl implements PhotoDAO {
	BaseDAO bd=new BaseDAO();
	public int createPhoto(Photo photo) {
		String sql="insert into photo(pg_id,photo_title,photo_content,photo_publishtime,photo_path,photo_type) values(?,?,?,?,?,?)";
		Object[] values={photo.getPgId(),photo.getPhotoTitle(),photo.getPhotoContent(),photo.getPhotoPublishTime(),photo.getPhotoPath(),photo.getPhotoType()};
		return bd.executeUpdate(sql, values);
	}

	public List findAll() {
		List list=new ArrayList();
		String sql="select * from photo";
		ResultSet rs=bd.executeQuery(sql, null);
		try {
			while(rs.next()){
				Photo p=new Photo(rs.getInt("pid"),rs.getInt("pg_id"),rs.getString("photo_title"),rs.getString("photo_content"),rs.getString("photo_publishtime"),rs.getString("photo_path"),rs.getString("photo_type"));
				list.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			bd.closeAll();
		}
		return list;
	}

	public Photo findById(int id) {
		Photo p=null;
		String sql="select * from photo where pid=?";
		Object[] values={id};
		ResultSet rs=bd.executeQuery(sql, values);
		try {
			while(rs.next()){
				p=new Photo(rs.getInt("pid"),rs.getInt("pg_id"),rs.getString("photo_title"),rs.getString("photo_content"),rs.getString("photo_publishtime"),rs.getString("photo_path"),rs.getString("photo_type"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			bd.closeAll();
		}
		return p;
	}

	public int deleteById(int id) {
		String sql="delete photo where pid=?";
		Object[] values={id};
		return bd.executeUpdate(sql, values);
	}
	
	public List<Photo> findByPageForAdmin(int groupid, int page){
		List<Photo> list=new ArrayList<Photo>();
		String sql="select pid,pg_id,photo_title,photo_content,photo_publishtime,photo_path,photo_type from(" +
		"select pid,pg_id,photo_title,photo_content,photo_publishtime,photo_path,photo_type,rownum r from(" +
		"select pid,pg_id,photo_title,photo_content,photo_publishtime,photo_path,photo_type from photo where pg_id="+groupid+" order by pid" +
		")where rownum<="+page+"*9" +
		")where r>9*("+page+"-1)";
		ResultSet rs=bd.executeQuery(sql, null);
		try {
			while(rs.next()){
				Photo photo=new Photo(rs.getInt("pid"),rs.getInt("pg_id"),rs.getString("photo_title"),rs.getString("photo_content"),rs.getString("photo_publishtime"),rs.getString("photo_path"),rs.getString("photo_type"));
				list.add(photo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			bd.closeAll();
		}
		return list;
		
	}
	
	public int getCount(int pgid) {
		int count=0;
		String sql="select count(*) from photo where pg_id=?";
		Object[] values={pgid};
		ResultSet rs=bd.executeQuery(sql, values);
		try {
			rs.next();
			count=rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			bd.closeAll();
		}
		return count;
	}

	public List findByPgId(int pgid) {
		List list=new ArrayList();
		String sql="select * from photo where pg_id=?";
		Object[] values={pgid};
		ResultSet rs=bd.executeQuery(sql, values);
		try {
			while(rs.next()){
				Photo p=new Photo(rs.getInt("pid"),rs.getInt("pg_id"),rs.getString("photo_title"),rs.getString("photo_content"),rs.getString("photo_publishtime"),rs.getString("photo_path"),rs.getString("photo_type"));
				list.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			bd.closeAll();
		}
		return list;
	}

	public int update(Photo photo) {
		String sql="update photo set photo_title=?,photo_content=? where pid=?";
		Object[] values={photo.getPhotoTitle(),photo.getPhotoContent(),photo.getPid()};
		return bd.executeUpdate(sql, values);
	}
}
