package com.css.jsp.biz;

import java.util.List;

import com.css.jsp.entity.DiaryGroup;

public interface DiaryGroupBiz {
	public int add(DiaryGroup diaryGroup);   //给用户添加新日志类别 
	public DiaryGroup findById(int id);   //根据id查询日志类别信息
	public List<DiaryGroup> findByUserId(int userId);   //查询用户的所有日志类别
	public int update(DiaryGroup diaryGroup);   //修改日志类别
	public int delete(int id);   //删除类别
}