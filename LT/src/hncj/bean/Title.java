package hncj.bean;

import hncj.util.DbUtil;

public class Title {
	private String titleId;
	private String authorName; 
	private String headline ;
	private String content ;
	private String ftime;
	public String getHeadline() {
		return headline;
	}
	public void setHeadline(String headline) {
		this.headline = headline;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAuthorName() {
		return authorName;
	}
	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}
	public String getFtime() {
		return ftime;
	}
	public void setFtime(String ftime) {
		this.ftime = ftime;
	}
	public String getTitleId() {
		return titleId;
	}
	public void setTitleId(String titleId) {
		this.titleId = titleId;
	}
	
	//����
	public int posting() {
		String sql="insert into title (authorName,headline,content,ftime) values"
				+ "('"+authorName
				+ "','"+headline
				+ "','"+content
				+ "','"+ftime
				+ "')";
		String[] params=new String[] {authorName,headline,content,ftime};
		for(int i=0;i<params.length;i++)
			System.out.print(params[i]);
		return DbUtil.executeUpdata(sql);
	}
	
	//删除帖子实现方法
	public int deleteTitle(int titleId) {
		String sql = "delete from title where id=" + titleId;
		// System.out.println(titleId);
		return DbUtil.executeUpdata(sql);

	}
	//修改帖子实现方法
	public int updatetitle(int titleId) {
		System.out.println(content);
		System.out.println(headline);
		System.out.println(titleId);
		String sql="update  title set headline='"+headline+"',content='"+content+"' where id='"+titleId+"'";
		//System.out.print(DbUtil.executeUpdata(sql));
		return DbUtil.executeUpdata(sql);
		
	}

}
