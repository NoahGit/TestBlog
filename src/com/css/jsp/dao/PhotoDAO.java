package com.css.jsp.dao;

import java.util.List;

import com.css.jsp.entity.Photo;

public interface PhotoDAO {
	public int createPhoto(Photo photo);
	public List findAll();
	public Photo findById(int id);
	public int deleteById(int id);
	public List<Photo> findByPageForAdmin(int groupid, int page);
	public int getCount(int pgid);
	public List findByPgId(int pgid);
	public int update(Photo photo);   //修改相片信息
}
