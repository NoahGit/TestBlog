package com.css.jsp.dao;

import com.css.jsp.entity.Users;

public interface UsersDAO {
	public int add(Users users);  //��ӣ��û�ע��
	public Users login(String userName,String userPwd);  //�û���¼
	public int update(Users users);   //�޸��û���Ϣ
	public Users findById(int id);   //�����û�id��ѯ�û���Ϣ
	public Users findByName(String userName);    //�����û����Ʋ�ѯ�û���Ϣ
	public int Rename(String userName);   //�ж��û����Ƿ��ظ�
}
