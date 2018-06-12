package com.css.jsp.dao;

import java.util.List;

import com.css.jsp.entity.PhotoGroup;

public interface PhotoGroupDAO {
	public List<PhotoGroup> findByUserId(int userId);   //��ѯ�û�������������
	public int add(PhotoGroup photoGroup);   //���û������������  
	public int update(PhotoGroup photoGroup);   //�޸�������
	public int delete(int id);   //ɾ�����
	public PhotoGroup findById(int id);
}
