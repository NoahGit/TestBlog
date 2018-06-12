package com.css.jsp.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.css.jsp.comm.BaseDAO;
import com.css.jsp.dao.DiaryDAO;
import com.css.jsp.entity.Diary;

public class DiaryDAOImpl implements DiaryDAO {
	BaseDAO bd=new BaseDAO();
	public int add(Diary diary) {
		String sql="insert into diary(dg_id,diary_title,diary_content,diary_publishtime) values(?,?,?,?)";
		Object[] values={diary.getDgId(),diary.getDiaryTitle(),diary.getDiaryContent(),diary.getDiaryPublishTime()};
		return bd.executeUpdate(sql, values);
	}

	public int delete(int id) {
		String sql="delete diary where diary_id="+id;
		return bd.executeUpdate(sql, null);
	}

	public int update(Diary diary) {
		String sql="update diary set diary_title=?,diary_content=? where diary_id=?";
		Object[] values={diary.getDiaryTitle(),diary.getDiaryContent(),diary.getDiaryId()};
		return bd.executeUpdate(sql, values);
	}

	public List<Diary> findTopSevenForUser(int userId) {
		List<Diary> list=new ArrayList<Diary>();
		String sql="select diary_title,diary_publishtime from(" +
				"select diary_title,diary_publishtime,rownum r from(" +
				"select diary_title,diary_publishtime from diary where dg_id=(select dg_id from diary_group where userid="+userId+") order by diary_id" +
				")where rownum<=7" +
				")where r>0)";
		ResultSet rs=bd.executeQuery(sql, null);
		try {
			while(rs.next()){
				Diary diary=new Diary(rs.getString("diary_title"),rs.getString("diary_publishtime"));
				list.add(diary);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			bd.closeAll();
		}
		return list;
	}

	public List<Diary> findByPageForUser(int groupid, int page) {
		List<Diary> list=new ArrayList<Diary>();
		String sql="select diary_title,diary_content,diary_publishtime from(" +
				"select diary_title,diary_content,diary_publishtime,rownum r from(" +
				"select diary_title,diary_content,diary_publishtime from diary where dg_id="+groupid+" order by diary_id" +
				")where rownum<="+page+"*8" +
				")where r>8*("+page+"-1)";
		ResultSet rs=bd.executeQuery(sql, null);
		try {
			while(rs.next()){
				Diary diary=new Diary(rs.getString("diary_title"),rs.getString("diary_content"),rs.getString("diary_publishtime"));
				list.add(diary);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			bd.closeAll();
		}
		return list;
	}

	public List<Diary> findByPageForAdmin(int groupid, int page) {
		List<Diary> list=new ArrayList<Diary>();
		String sql="select diary_id,dg_id,diary_title,diary_content,diary_publishtime from(" +
				"select diary_id,dg_id,diary_title,diary_content,diary_publishtime,rownum r from(" +
				"select diary_id,dg_id,diary_title,diary_content,diary_publishtime from diary where dg_id="+groupid+" order by diary_id" +
				")where rownum<="+page+"*7" +
				")where r>7*("+page+"-1)";
		ResultSet rs=bd.executeQuery(sql, null);
		try {
			while(rs.next()){
				Diary diary=new Diary(rs.getInt("diary_id"),rs.getInt("dg_id"),rs.getString("diary_title"),rs.getString("diary_content"),rs.getString("diary_publishtime"));
				list.add(diary);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			bd.closeAll();
		}
		return list;
	}

	public int findCountByGroupid(int groupid) {
		int i=0;
		String sql="select count(*) from diary where dg_id="+groupid;
		ResultSet rs=bd.executeQuery(sql, null);
		try {
			rs.next();
			i=rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			bd.closeAll();
		}
		return i;
	}

	public Diary findById(int id) {
		Diary diary=null;
		String sql="select * from diary where diary_id="+id;
		ResultSet rs=bd.executeQuery(sql, null);
		try {
			while(rs.next()){
				diary=new Diary(rs.getInt("diary_id"),rs.getInt("dg_id"),rs.getString("diary_title"),rs.getString("diary_content"),rs.getString("diary_publishtime"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			bd.closeAll();
		}
		return diary;
	}

	public int getCount(int dgid) {
		int count=0;
		String sql="select count(*) from diary where dg_id=?";
		Object[] values={dgid};
		ResultSet rs=bd.executeQuery(sql, values);
		try {
			rs.next();
			count=rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			bd.closeAll();
		}
		return count;
	}
	
}
