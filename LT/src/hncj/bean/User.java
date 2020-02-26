package hncj.bean;

import java.sql.ResultSet;
import java.sql.SQLException;

import hncj.util.DbUtil;

public class User {
		private int userId;
		private String username;
		private String password;
		private String sex;
		private String age ;
		private String email;
		private String tel;
		private String collage;
		private String major;
		public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public String getSex() {
			return sex;
		}

		public void setSex(String sex) {
			this.sex = sex;
		}
		public String getAge() {
			return age;
		}

		public void setAge(String age) {
			this.age = age;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getTel() {
			return tel;
		}

		public void setTal(String tel) {
			this.tel = tel;
		}

		public String getCollage() {
			return collage;
		}

		public void setCollage(String collage) {
			this.collage = collage;
		}

		public String getMajor() {
			return major;
		}

		public void setMajor(String major) {
			this.major = major;
		}
		public int getUserId() {
			return userId;
		}

		public void setUserId(int userId) {
			this.userId = userId;
		}

		//用户登录
		public boolean login() {
			String sql="select * from testuser where username='"+this.username+"' and password='"+this.password+"'";
			ResultSet rs=DbUtil.executeQuery(sql);
			try {
				if(rs.next()) {
					return true;
				}
				else {
					return false;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return false;
		}
		
		//用户注册
		public int regist() {
			String sql="INSERT INTO testuser "
					+ "(username,PASSWORD,sex,age,email,tel,collage,major)"
					+ " VALUES ("
					+ "'"+username
					+ "','"+password
					+ "','"+sex
					+ "','"+age
					+ "','"+email
					+ "','"+tel
					+ "','"+collage
					+ "','"+major
					+ "');";
			return DbUtil.executeUpdata(sql);
		}
		
		//删除用户
		public int deleteUser(int userId) {
			String sql = "delete from testuser where id=" + userId;
			// System.out.println(userId);
			return DbUtil.executeUpdata(sql);
		}
		//修改密码
		public boolean updatepassword() {
			String sql="select * from testuser where username = "+this.username+
					" and age = "+this.age+""+" and email="+this.email+" and tel = "+this.tel;
			ResultSet rs=DbUtil.executeQuery(sql);
			try {
				if(rs.next()) {
					return true;
				}
				else {
					return false;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return false;
		
		}
		//更新用户
		public int updateuser(int userId) {
			System.out.println(userId);
			String sql="update testuser set age='"+age+"',sex='"+sex+"',email='"+email+"',tel='"+tel+"',collage='"+collage+"',major='"+major+"'where id='"+userId+"'";
			return DbUtil.executeUpdata(sql) ;
			// TODO Auto-generated method stub
		}
		//修改密码
		public int updatePassword(String username,String newPassword) {
			
			String sql="update testuser set password='"+newPassword+"' where username='"+username+"'";
			return DbUtil.executeUpdata(sql) ;
		}
		

}
