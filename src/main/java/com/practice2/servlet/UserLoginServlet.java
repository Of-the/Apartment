package com.practice2.servlet;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.practice2.dao.UserDao;
import com.practice2.dao.impl.UserDaoImpl;
import com.practice2.pojo.User;


/**
 * Servlet implementation class UserLoginServlet
 */
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String user_name=request.getParameter("user_name");
		String user_password=request.getParameter("user_password");
		String number = request.getParameter("vcode");
		String code = session.getAttribute("code").toString();
		UserDao dao=new UserDaoImpl();
		//User u = dao.findByUserName(user_name);
		User user=dao.userLogin(user_name, user_password);
			if (user.getUserName()==null||!number.equals(code)) {
				request.setAttribute("login_err", "验证码错误！");
				request.getRequestDispatcher("login.jsp").forward(request, response);
				request.setAttribute("msg", "帐号不存在");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}else {
				if (user.getUserPassword().equals(user_password)) {
					request.getSession().setAttribute("user", user);
					response.sendRedirect("admin.jsp");
				}
				else {
					request.setAttribute("psd_error", "密码错误");
					request.getRequestDispatcher("login.jsp").forward(request, response);
				}
			}
	}
}
