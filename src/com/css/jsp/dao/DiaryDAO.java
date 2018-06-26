package com.css.jsp.dao;

import java.util.List;

import com.css.jsp.entity.Diary;

public interface DiaryDAO {
	public int add(Diary diary);  //�������־
	public int delete(int id);   //ɾ����־
	public int update(Diary diary);   //�޸���־
	public List<Diary> findTopSevenForUser(int userId);   //��ѯ�û�ǰ̨��ҳ�����ݣ�7��
	public List<Diary> findByPageForUser(int groupid,int page);  //������־�����ҳ��ѯ�û�ǰ̨����־�б�8��
	public List<Diary> findByPageForAdmin(int groupid,int page); //������־�����ҳ��ѯ�û���̨����־�б�7��
	public int findCountByGroupid(int groupid);   //������־���id��ѯ��������־����
	public Diary findById(int id);   //ͨ��id��ѯ��־��ϸ��Ϣ
	public Diary findByTitle(String diaryTitle);
	public int getCount(int dgid);   //��ȡ��־������
}
