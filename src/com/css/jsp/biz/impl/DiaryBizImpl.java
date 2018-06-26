package com.css.jsp.biz.impl;

import java.util.List;

import com.css.jsp.biz.DiaryBiz;
import com.css.jsp.dao.DiaryDAO;
import com.css.jsp.dao.impl.DiaryDAOImpl;
import com.css.jsp.entity.Diary;

public class DiaryBizImpl implements DiaryBiz {
	DiaryDAO ddi=new DiaryDAOImpl();
	public int getMaxPageByGroupId(int groupId, int pageNum) {
		int i=ddi.findCountByGroupid(groupId);
		int res=i/pageNum;
		return res;
	}
	public int add(Diary diary) {
		return ddi.add(diary);
	}
	public List<Diary> findByPageForAdmin(int groupid, int page) {
		return ddi.findByPageForAdmin(groupid, page);
	}
	public int update(Diary diary) {
		return ddi.update(diary);
	}
	public int delete(int id) {
		return ddi.delete(id);
	}
	public Diary findById(int id) {
		return ddi.findById(id);
	}
	public int getCount(int dgid) {
		return ddi.getCount(dgid);
	}
	@Override
	public Diary findByTitle(String diaryTitle) {
		return ddi.findByTitle(diaryTitle);
	}
}
