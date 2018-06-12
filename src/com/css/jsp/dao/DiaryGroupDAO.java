package com.css.jsp.dao;

import java.util.List;

import com.css.jsp.entity.DiaryGroup;

public interface DiaryGroupDAO {
	public List<DiaryGroup> findByUserId(int userId);   //��ѯ�û���������־���
	public int add(DiaryGroup diaryGroup);   //���û��������־���  
	public int update(DiaryGroup diaryGroup);   //�޸���־���
	public int delete(int id);   //ɾ�����
	public DiaryGroup findById(int id);   //����id��ѯ��־�����Ϣ
}
