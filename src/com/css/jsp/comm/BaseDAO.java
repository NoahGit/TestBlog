package com.css.jsp.comm;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BaseDAO {
	public final String driver="oracle.jdbc.driver.OracleDriver";
	public final String url="jdbc:oracle:thin:@222.25.2.37:1521:orcl";
	public final String user="GY";
	public final String pwd="GY";
	public Connection con;
	public PreparedStatement pstmt;
	public ResultSet rs;
	/**
	 * �������
	 * @param args�������Ӷ���
	 */
	public Connection getConnection(){
		try {
			Class.forName(driver);
			con=DriverManager.getConnection(url,user,pwd);
			
		} catch (ClassNotFoundException e) {
			System.out.println("���������쳣��");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("��������쳣��");
			e.printStackTrace();
		}
		return con;
	}
	/**
	 * �ر���������
	 * @param args
	 */
	public void closeAll(){
		if(rs!=null){
			try {
				rs.close();
			} catch (SQLException e) {
				System.out.println("�ر�rs�쳣��");
				e.printStackTrace();
			}
		}
		if(pstmt!=null){
			try {
				pstmt.close();
			} catch (SQLException e) {
				System.out.println("�ر�pstmt�쳣��");
				e.printStackTrace();
			}
		}
		try {
			if(con!=null && !con.isClosed()){
				con.close();
			}
		} catch (SQLException e) {
			System.out.println("�ر�con�쳣��");
			e.printStackTrace();
		}
	}
	/**
	 * ִ��select���
	 *
	 * @param sqlҪִ�е�select��ѯ���
	 * @param values��ѯ����У�������ֵ�б�
	 * @return ���ؽ����
	 */
	public ResultSet executeQuery(String sql,Object[] values){
		getConnection();
		try {
			pstmt=con.prepareStatement(sql);
			if(values!=null && values.length>0){
				for(int i=0;i<values.length;i++){
					pstmt.setObject(i+1, values[i]);
				}
			}
			rs=pstmt.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	/**
	 * ִ��update��delete��insert���
	 * @param sqlҪִ�е�dml���
	 * @param values����У�ռλ����ֵ�б�
	 * @return ������Ӱ�������
	 */
	public int executeUpdate(String sql,Object[] values){
		int result=0;
		getConnection();
		try {
			pstmt=con.prepareStatement(sql);
			if(values!=null && values.length>0){
				for(int i=0;i<values.length;i++){
					pstmt.setObject(i+1, values[i]);
				}
			}
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			this.closeAll();
		}
		return result;
	}
}
