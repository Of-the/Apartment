package com.practice2.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.practice2.dao.UserDao;
import com.practice2.dao.impl.UserDaoImpl;
import com.practice2.pojo.User;

/**
 * Servlet implementation class UserShowServlet
 */
public class UserShowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		System.out.println(session.getId());
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		PrintWriter out = resp.getWriter();
		String uri = req.getRequestURI();
		String action = uri.substring(uri.lastIndexOf("/")+1,uri.lastIndexOf("."));
		UserDao dao=new UserDaoImpl();
		if("UserShowServlet".equals(action)){
			List<User> user=dao.selectAll();
			req.setAttribute("user", user);
			req.getRequestDispatcher("view/User/userList.jsp").forward(req, resp);
		}
		else if("UserAddServlet".equals(action)){
			//int userId=Integer.parseInt(req.getParameter("user_id"));
			String userName=req.getParameter("user_name");
			String userPassword=req.getParameter("user_password");
			String userPhone=req.getParameter("user_phone");
			String userAddress=req.getParameter("user_address");
			User user=new User();
			//user.setUserId(userId);
			user.setUserName(userName);
			user.setUserPassword(userPassword);
			user.setUserPhone(userPhone);
			user.setUserAddress(userAddress);
			dao.add(user);
			resp.sendRedirect("UserShowServlet.do");
			
		}else if("UserDeleteServlet".equals(action)){
			int id=Integer.parseInt(req.getParameter("id"));
			dao.deleteByID(id);
			resp.sendRedirect("UserShowServlet.do");
		}else if("UserDetailServlet".equals(action)){
			int id=Integer.parseInt(req.getParameter("id"));
			User user=dao.updateByID(id);
			req.setAttribute("user", user);
			req.getRequestDispatcher("view/User/userDetail.jsp").forward(req, resp);
		}else if("UserEditServlet".equals(action)){
			int id=Integer.parseInt(req.getParameter("user_id"));
			String userName=req.getParameter("user_name");
			String userPassword=req.getParameter("user_password");
			String userPhone=req.getParameter("user_phone");
			String userAddress=req.getParameter("user_address");
			User user=new User();
			dao.updateByID(id);
			user.setUserId(id);
			user.setUserName(userName);
			user.setUserPassword(userPassword);
			user.setUserPhone(userPhone);
			user.setUserAddress(userAddress);
			dao.update(user);
			resp.sendRedirect("UserShowServlet.do");
		}else if("UserUpdateServlet".equals(action)){
			int id=Integer.parseInt(req.getParameter("id"));
			User user=dao.updateByID(id);
			req.setAttribute("user", user);
			req.getRequestDispatcher("view/User/userUpdate.jsp").forward(req, resp);		
	}
	}
}
