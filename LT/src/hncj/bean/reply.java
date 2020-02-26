package hncj.bean;

import hncj.util.DbUtil;

public class reply {
		private int id;
		private String rName;
		private String rContent;
		private String rTime;
		private String rId;
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getrName() {
			return rName;
		}
		public void setrName(String rName) {
			this.rName = rName;
		}
		public String getrContent() {
			return rContent;
		}
		public void setrContent(String rContent) {
			this.rContent = rContent;
		}
		public String getrTime() {
			return rTime;
		}
		public void setrTime(String rTime) {
			this.rTime = rTime;
		}
		public String getrId() {
			return rId;
		}
		public void setrId(String rId) {
			this.rId = rId;
		}
		
		//»Ø¸´
		public int response() {
			String sql="insert into reply (rName,rContent,rTime,rId) values"
					+ "('"+rName
					+ "','"+rContent
					+ "','"+rTime
					+ "','"+rId
					+ "')";
			return DbUtil.executeUpdata(sql);
		}
		
		//É¾³ý»Ø¸´
		public int deleteReply(int id) {
			String sql="delete from reply where id="+id;
			//System.out.println(titleId);
			return DbUtil.executeUpdata(sql);
			
		}
}
