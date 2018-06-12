package com.css.jsp.dao;

import java.util.List;

import com.css.jsp.entity.PhotoGroup;

public interface PhotoGroupDAO {
	public List<PhotoGroup> findByUserId(int userId);   //查询用户的所有相册类别
	public int add(PhotoGroup photoGroup);   //给用户添加新相册类别  
	public int update(PhotoGroup photoGroup);   //修改相册类别
	public int delete(int id);   //删除类别
	public PhotoGroup findById(int id);
}
