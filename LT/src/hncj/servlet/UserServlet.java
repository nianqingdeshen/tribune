package hncj.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hncj.bean.Search;
import hncj.bean.Title;
import hncj.bean.User;
import hncj.bean.reply;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public UserServlet() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 设置编码格式，防止乱码
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		// 接收用户信息

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String sex = request.getParameter("sex");
		String age = request.getParameter("age");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String collage = request.getParameter("collage");
		String major = request.getParameter("major");

		// 在bean中设置用户数据
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		user.setSex(sex);
		user.setAge(age);
		user.setEmail(email);
		user.setTal(tel);
		user.setCollage(collage);
		user.setMajor(major);

		// 接收帖子信息
		String headline = request.getParameter("headline");
		String content = request.getParameter("content");
		String authorName = request.getParameter("authorName");
		String ftime = request.getParameter("time");

		// 在bean中设置帖子信息
		Title title = new Title();
		title.setAuthorName(authorName);
		title.setHeadline(headline);
		title.setContent(content);
		title.setFtime(ftime);
		// System.out.println(ftime);

		// 接收查询功能提交的信息
		String type = request.getParameter("type");
		String search = request.getParameter("search");
		String name = request.getParameter("username");

		// 在bean中设置提交的信息
		Search s = new Search();
		s.setSearch(name);
		s.setSearch(search);
		s.setType(type);

		// 接收回帖的信息
		String rName = request.getParameter("rName");
		String rContent = request.getParameter("rContent");
		String rTime = request.getParameter("rTime");
		String rId = request.getParameter("rId");

		// 在bean中设置回帖的信息
		reply r = new reply();
		r.setrName(rName);
		r.setrContent(rContent);
		r.setrTime(rTime);
		r.setrId(rId);

		// 接收flag值，分类进入相关功能
		String flag = request.getParameter("flag");

		// 建立session对象，让各个功能页面更好地传值
		HttpSession session = request.getSession();

		// 用户登录功能
		if (flag.equals("login")) {
			if (username.equals("root") && password.equals("123456")) {
				session.setAttribute("info", username);
				response.sendRedirect("g3.jsp");

			} else {
				if (user.login()) {
					response.sendRedirect("g.jsp");
					// System.out.println("1");
					session.setAttribute("info", username);
				} else {
					// session.setAttribute("info", "用户名错误或密码错误");
					response.sendRedirect("error.jsp");
				}
			}
		}

		// 用户注册功能
		if (flag.equals("regist")) {
			if (username != null && password != null) {
				if (user.regist() != 0) {
					response.sendRedirect("registSuccess.jsp");
				} else {
					response.sendRedirect("registError.jsp");
				}
			}
		}

		// 用户发帖功能
		if (flag.equals("card")) {
			if (headline != null) {
				if (title.posting() != 0) {
					response.sendRedirect("g.jsp");
					// System.out.println(authorName);
					// System.out.println(headline);
					// System.out.println(content);
				} else {
					response.sendRedirect("error.jsp");
				}
			}
		}

		// 用户回帖功能
		if (flag.equals("reply")) {
			if (r.response() != 0) {
				response.sendRedirect("g.jsp");
			} else {
				response.sendRedirect("registError.jsp");
			}
		}

		// 用户和游客搜贴功能
		if (flag.equals("Search")) {
			if (type != null & search != null) {
				if (s.searchTitle()) {
					response.sendRedirect("searchResult.jsp");
				} else {
					response.sendRedirect("error.jsp");
				}
			}
		}
		//用户根据帖子id删除发表的帖子
				if (flag.equals("deletetitle")) {
					int titleId = Integer.parseInt(request.getParameter("titleId"));
					System.out.println(flag);
					System.out.println(titleId);
					if (title.deleteTitle(titleId) != 0) {
						response.sendRedirect("updatecard.jsp");
					} else {
						response.sendRedirect("error.jsp");
					}
				}
		// 管理员根据用户id删除用户信息功能
		if (flag.equals("deleteUser")) {
			int userId = Integer.parseInt(request.getParameter("userId"));
			if (user.deleteUser(userId) != 0) {
				response.sendRedirect("admini.jsp");
			} else {
				response.sendRedirect("error.jsp");
			}
		}

		// 管理员根据帖子id删除帖子
		
		if (flag.equals("deleteTitle")) {
			int titleId = Integer.parseInt(request.getParameter("titleId"));
			System.out.println(flag);
			System.out.println(titleId);
			if (title.deleteTitle(titleId) != 0) {
				response.sendRedirect("admini.jsp");
			} else {
				response.sendRedirect("error.jsp");
			}
		}

		// 管理员根据回复id删除回复信息
		if (flag.equals("deleteReply")) {
			int id = Integer.parseInt(request.getParameter("id"));
			if (r.deleteReply(id) != 0) {
				response.sendRedirect("admini.jsp");
			} else {
				response.sendRedirect("error.jsp");
			}
		}

		// 用户修改自己发表的帖子
		if (flag.equals("updatetitle")) {
			int titleId = Integer.parseInt(request.getParameter("titleid"));

			if (title.updatetitle(titleId) != 0) {
				response.sendRedirect("updatesuccess.jsp");
			} else {
				response.sendRedirect("error.jsp");
			}
		}

		// 用户信息修改个人信息
		if (flag.equals("updateuser")) {
			int userId = Integer.parseInt(request.getParameter("userId"));

			if (user.updateuser(userId) != 0) {
				response.sendRedirect("personal.jsp");
			} else {
				response.sendRedirect("error.jsp");
			}
		}

		// 找回密码判定
		if (flag.equals("updatepassword")) {
			int userId = Integer.parseInt(request.getParameter("userId"));
			user.setUserId(userId);
			session.setAttribute("id", userId);
			if (user.updatepassword()) {
				response.sendRedirect("updatePassword.jsp");
			} else {
				response.sendRedirect("shenhepassworderror.jsp");
			}
		}
		// 修改密码
		if (flag.equals("updatePassword")) {
			int userId = Integer.parseInt(request.getParameter("userId"));
			user.setUserId(userId);
			String newPassword = request.getParameter("password");
			String newPassword1 = request.getParameter("password1");
			System.out.println(newPassword);
			if(newPassword.equals(newPassword1)) {
				if (user.updatePassword(userId,newPassword) != 0) {
					response.sendRedirect("success1.jsp");
				} else {
					response.sendRedirect("error.jsp");
				}
			}else {
				response.sendRedirect("error1.jsp");
			}
			
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
