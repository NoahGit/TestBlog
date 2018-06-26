package com.css.jsp.biz;

import java.util.List;

import com.css.jsp.entity.Diary;

public interface DiaryBiz {
	public int getMaxPageByGroupId(int groupId,int pageNum);
	public int add(Diary diary);  //�������־
	public List<Diary> findByPageForAdmin(int groupid,int page); //������־�����ҳ��ѯ�û���̨����־�б�7��
	public int update(Diary diary);   //�޸���־
	public int delete(int id);   //ɾ����־
	public Diary findById(int id);   //ͨ��id��ѯ��־��ϸ��Ϣ
	public int getCount(int dgid);   //��ȡ��־������
	public Diary findByTitle(String diaryTitle);
}
