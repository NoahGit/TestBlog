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
	 * 获得连接
	 * @param args返回连接对象
	 */
	public Connection getConnection(){
		try {
			Class.forName(driver);
			con=DriverManager.getConnection(url,user,pwd);
			
		} catch (ClassNotFoundException e) {
			System.out.println("加载驱动异常！");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("获得连接异常！");
			e.printStackTrace();
		}
		return con;
	}
	/**
	 * 关闭所有连接
	 * @param args
	 */
	public void closeAll(){
		if(rs!=null){
			try {
				rs.close();
			} catch (SQLException e) {
				System.out.println("关闭rs异常！");
				e.printStackTrace();
			}
		}
		if(pstmt!=null){
			try {
				pstmt.close();
			} catch (SQLException e) {
				System.out.println("关闭pstmt异常！");
				e.printStackTrace();
			}
		}
		try {
			if(con!=null && !con.isClosed()){
				con.close();
			}
		} catch (SQLException e) {
			System.out.println("关闭con异常！");
			e.printStackTrace();
		}
	}
	/**
	 * 执行select语句
	 *
	 * @param sql要执行的select查询语句
	 * @param values查询语句中？参数的值列表
	 * @return 返回结果集
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
	 * 执行update，delete，insert语句
	 * @param sql要执行的dml语句
	 * @param values语句中？占位符的值列表
	 * @return 返回受影响的行数
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
