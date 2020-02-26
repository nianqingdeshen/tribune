package hncj.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class DbUtil {
	private static final String url="jdbc:mysql://localhost:3306/userdb?characterEncoding=utf8&useSSL=false";
	private static final String username="root";
	private static final String password="";
	protected static Statement s=null;
	protected static ResultSet rs=null;
	protected static Connection conn=null;
	protected static PreparedStatement ps=null;
	
	public static Connection getConnection() {
		try {
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection(url,username,password);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	public static int executeUpdata(String sql) {
		int result=0;
		try {
		s=getConnection().createStatement();
		result=s.executeUpdate(sql);}
		catch(Exception e) {
			e.getStackTrace();
		}
		System.out.println(sql);
		return result ;
		
	}
	public static ResultSet executeQuery(String sql) {
		try {
			s=getConnection().createStatement();
			rs=s.executeQuery(sql);
		}catch(Exception e) {
			e.getStackTrace();
		}
		return rs;
	}
	public static int executePUdate(String sql,String [] params) {
		int result=0;
		try {
			ps=getConnection().prepareStatement(sql);
			for(int i=0;i<params.length;i++) {
				ps.setString(i+1,params[i]);
			}
			result=ps.executeUpdate(sql);
		}catch(Exception e) {
			e.getStackTrace();
		}
		System.out.println(sql);
		System.out.println(result);
		return result ;
	}
}
