package com.css.jsp.biz.impl;

import java.util.List;

import com.css.jsp.biz.PhotoGroupBiz;
import com.css.jsp.dao.PhotoGroupDAO;
import com.css.jsp.dao.impl.PhotoGroupDAOImpl;
import com.css.jsp.entity.PhotoGroup;

public class PhotoGroupBizImpl implements PhotoGroupBiz{
	PhotoGroupDAO pgd=new PhotoGroupDAOImpl();
	public List<PhotoGroup> findByUserId(int userId) {
		return pgd.findByUserId(userId);
	}
	public int add(PhotoGroup photoGroup) {
		return pgd.add(photoGroup);
	}
	public int update(PhotoGroup photoGroup) {
		return pgd.update(photoGroup);
	}
	public int delete(int id) {
		return pgd.delete(id);
	}
	public PhotoGroup findById(int id) {
		return pgd.findById(id);
	}
}
