package com.practice2.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.practice2.dao.RoleDao;
import com.practice2.dao.impl.RoleDaoImpl;
import com.practice2.pojo.Role;

/**
 * Servlet implementation class RoleShowServlet
 */
public class RoleShowServlet extends HttpServlet {
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
		RoleDao dao=new RoleDaoImpl();
		if("RoleShowServlet".equals(action)){
			List<Role> role=dao.selectAll();
			req.setAttribute("role", role);
			req.getRequestDispatcher("view/Role/roleList.jsp").forward(req, resp);
		}
		else if("RoleAddServlet".equals(action)){
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			String time=req.getParameter("r_addtime");
			Date rAddtime = null;
			try {
				rAddtime=new Date(sdf.parse(time).getTime());
			} catch (ParseException e) {
				e.printStackTrace();
			}
			//int id=Integer.parseInt(req.getParameter("role_id"));
			String rName=req.getParameter("r_name");
			String rDesc=req.getParameter("r_desc");
			Role role=new Role();
			//role.setRoleId(id);
			role.setrName(rName);
			role.setrDesc(rDesc);
			role.setrAddtime(rAddtime);
			dao.add(role);
			resp.sendRedirect("RoleShowServlet.do");
			
		}else if("RoleDeleteServlet".equals(action)){
			int id=Integer.parseInt(req.getParameter("id"));
			dao.deleteByID(id);
			resp.sendRedirect("RoleShowServlet.do");
		}else if("RoleDetailServlet".equals(action)){
			int id=Integer.parseInt(req.getParameter("id"));
			Role role=dao.updateByID(id);
			req.setAttribute("role", role);
			req.getRequestDispatcher("view/Role/roleDetail.jsp").forward(req, resp);
		}else if("RoleEditServlet".equals(action)){
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			String time=req.getParameter("r_addtime");
			Date rAddtime = null;
			try {
				rAddtime=new Date(sdf.parse(time).getTime());
			} catch (ParseException e) {
				e.printStackTrace();
			}
			int id=Integer.parseInt(req.getParameter("id"));
			String rName=req.getParameter("r_name");
			String rDesc=req.getParameter("r_desc");
			Role role=new Role();
			dao.updateByID(id);
			role.setRoleId(id);
			role.setrName(rName);
			role.setrDesc(rDesc);
			role.setrAddtime(rAddtime);
			dao.update(role);
			resp.sendRedirect("RoleShowServlet.do");
		}else if("RoleUpdateServlet".equals(action)){
			int id=Integer.parseInt(req.getParameter("id"));
			Role role=dao.updateByID(id);
			req.setAttribute("role", role);
			req.getRequestDispatcher("view/Role/roleUpdate.jsp").forward(req, resp);		
	}
	}
	}

