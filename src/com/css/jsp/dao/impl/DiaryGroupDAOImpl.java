package com.css.jsp.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.css.jsp.comm.BaseDAO;
import com.css.jsp.dao.DiaryGroupDAO;
import com.css.jsp.entity.DiaryGroup;

public class DiaryGroupDAOImpl implements DiaryGroupDAO {
	BaseDAO bd=new BaseDAO();
	public List<DiaryGroup> findByUserId(int userid) {
		List<DiaryGroup> list=new ArrayList<DiaryGroup>();
		String sql="select dg_id,userid,dg_name from diary_group where userid=? order by dg_id";
		Object[] values={userid};
		ResultSet rs=bd.executeQuery(sql, values);
		try {
			while(rs.next()){
				DiaryGroup diarygroup=new DiaryGroup(rs.getInt("dg_id"),rs.getInt("userid"),rs.getString("dg_name"));
				list.add(diarygroup);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			bd.closeAll();
		}
		return list;
	}

	

	public int update(DiaryGroup diaryGroup) {
		String sql="update diary_group set dg_name=? where dg_id=?";
		Object[] values={diaryGroup.getDgName(),diaryGroup.getDgId()};
		return bd.executeUpdate(sql, values);
	}


	public int delete(int id) {
		String sql="delete diary_group where dg_id="+id;
		return bd.executeUpdate(sql, null);
	}
	public DiaryGroup findById(int id) {
		DiaryGroup diaryGroup=null;
		String sql="select * from diary_group where dg_id="+id;
		ResultSet rs=bd.executeQuery(sql, null);
		try {
			while(rs.next()){
				diaryGroup=new DiaryGroup(rs.getInt("dg_id"),rs.getInt("userid"),rs.getString("dg_name"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			bd.closeAll();
		}
		return diaryGroup;
	}

	public int add(DiaryGroup diaryGroup) {
		String sql="insert into diary_group(userid,dg_name) values(?,?)";
		Object[] values={diaryGroup.getUserId(),diaryGroup.getDgName()};
		return bd.executeUpdate(sql, values);
	}

}
