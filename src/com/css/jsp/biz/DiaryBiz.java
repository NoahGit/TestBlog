package com.css.jsp.biz;

import java.util.List;

import com.css.jsp.entity.Diary;

public interface DiaryBiz {
	public int getMaxPageByGroupId(int groupId,int pageNum);
	public int add(Diary diary);  //添加新日志
	public List<Diary> findByPageForAdmin(int groupid,int page); //根据日志分类分页查询用户后台的日志列表，7条
	public int update(Diary diary);   //修改日志
	public int delete(int id);   //删除日志
	public Diary findById(int id);   //通过id查询日志详细信息
	public int getCount(int dgid);   //获取日志总行数
	public Diary findByTitle(String diaryTitle);
}
