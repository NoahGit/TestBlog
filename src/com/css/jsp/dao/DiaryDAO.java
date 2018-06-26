package com.css.jsp.dao;

import java.util.List;

import com.css.jsp.entity.Diary;

public interface DiaryDAO {
	public int add(Diary diary);  //添加新日志
	public int delete(int id);   //删除日志
	public int update(Diary diary);   //修改日志
	public List<Diary> findTopSevenForUser(int userId);   //查询用户前台首页的数据，7条
	public List<Diary> findByPageForUser(int groupid,int page);  //根据日志分类分页查询用户前台的日志列表，8条
	public List<Diary> findByPageForAdmin(int groupid,int page); //根据日志分类分页查询用户后台的日志列表，7条
	public int findCountByGroupid(int groupid);   //根据日志类别id查询该类别的日志总数
	public Diary findById(int id);   //通过id查询日志详细信息
	public Diary findByTitle(String diaryTitle);
	public int getCount(int dgid);   //获取日志总行数
}
