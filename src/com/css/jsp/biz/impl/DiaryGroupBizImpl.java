package com.css.jsp.biz.impl;

import java.util.List;

import com.css.jsp.biz.DiaryGroupBiz;
import com.css.jsp.dao.DiaryGroupDAO;
import com.css.jsp.dao.impl.DiaryGroupDAOImpl;
import com.css.jsp.entity.DiaryGroup;

public class DiaryGroupBizImpl implements DiaryGroupBiz{
	DiaryGroupDAO dgd=new DiaryGroupDAOImpl();
	public int add(DiaryGroup diaryGroup) {
		return dgd.add(diaryGroup);
	}
	public DiaryGroup findById(int id) {
		return dgd.findById(id);
	}
	public List<DiaryGroup> findByUserId(int userId) {
		return dgd.findByUserId(userId);
	}
	public int update(DiaryGroup diaryGroup) {
		return dgd.update(diaryGroup);
	}
	public int delete(int id) {
		return dgd.delete(id);
	}
}
