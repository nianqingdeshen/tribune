package hncj.bean;

import java.sql.ResultSet;
import java.sql.SQLException;

import hncj.util.DbUtil;

public class Search {
	private String type;
	private String search;

	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	
	//根据帖子和帖子作者搜索帖子功能实现方法
	public boolean searchTitle() {
		String sql = "select * from title where " + type + " like '%" + search + "%'";
		ResultSet rs = DbUtil.executeQuery(sql);
		try {
			if (rs.next()) {
				return true;
			} else {
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
}
