package com.css.jsp.biz;

import com.css.jsp.entity.Users;

public interface UsersBiz {
	//ע��
	public int add(Users users);
	//��¼
	public Users login(String userName,String userPwd);
	//�޸ĸ�����Ϣ
	public int update(Users users);
	//�����û�id��ѯ�û���Ϣ
	public Users findById(int id);
	//�����û����Ʋ�ѯ�û���Ϣ
	public Users findByName(String userName);
	//�ж��û����Ƿ��ظ�
	public int Rename(String userName);   
}


