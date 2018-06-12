package com.css.jsp.biz.impl;

import java.util.List;

import com.css.jsp.biz.PhotoBiz;
import com.css.jsp.dao.PhotoDAO;
import com.css.jsp.dao.impl.PhotoDAOImpl;
import com.css.jsp.entity.Photo;

public class PhotoBizImpl implements PhotoBiz {
	PhotoDAO pd=new PhotoDAOImpl();
	public int createPhoto(Photo photo) {
		return pd.createPhoto(photo);
	}

	public List findAll() {
		return pd.findAll();
	}

	public Photo findById(int id) {
		return pd.findById(id);
	}

	public int deleteById(int id) {
		return pd.deleteById(id);
	}

	public List<Photo> findByPageForAdmin(int groupid, int page) {
		return pd.findByPageForAdmin(groupid, page);
	}

	public int getCount(int pgid) {
		return pd.getCount(pgid);
	}

	public List findByPgId(int pgid) {
		return pd.findByPgId(pgid);
	}

	public int update(Photo photo) {
		return pd.update(photo);
	}

}
