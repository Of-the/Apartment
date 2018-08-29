package com.practice2.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.practice2.dao.UserDao;
import com.practice2.dao.impl.UserDaoImpl;
import com.practice2.pojo.User;


/**
 * Servlet implementation class UserLoginServlet
 */
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String user_name=request.getParameter("user_name");
		String user_password=request.getParameter("user_password");
		UserDao dao=new UserDaoImpl();
		User user=dao.userLogin(user_name, user_password);
			if (user.getUserName()==null) {
				request.setAttribute("msg", "帐号不存在");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}else {
				if (user.getUserPassword().equals(user_password)) {
					request.getSession().setAttribute("user", user);
					response.sendRedirect("admin.jsp");
				}else {
					request.setAttribute("msg", "密码错误");
					request.getRequestDispatcher("login.jsp").forward(request, response);
				}
			}
			
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
