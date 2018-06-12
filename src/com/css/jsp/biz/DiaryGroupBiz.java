package com.css.jsp.biz;

import java.util.List;

import com.css.jsp.entity.DiaryGroup;

public interface DiaryGroupBiz {
	public int add(DiaryGroup diaryGroup);   //���û��������־��� 
	public DiaryGroup findById(int id);   //����id��ѯ��־�����Ϣ
	public List<DiaryGroup> findByUserId(int userId);   //��ѯ�û���������־���
	public int update(DiaryGroup diaryGroup);   //�޸���־���
	public int delete(int id);   //ɾ�����
}