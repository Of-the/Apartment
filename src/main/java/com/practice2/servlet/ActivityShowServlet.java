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

import com.practice2.dao.ActivityDao;
import com.practice2.dao.impl.ActivityDaoImpl;
import com.practice2.pojo.Activity;

/**
 * Servlet implementation class ActivityShowServlet
 */
public class ActivityShowServlet extends HttpServlet {
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
		ActivityDao dao=new ActivityDaoImpl();
		if("ActivityShowServlet".equals(action)){
			List<Activity> activity=dao.selectAll();
			req.setAttribute("activity", activity);
			System.out.println(activity);
			req.getRequestDispatcher("view/Activity/activityList.jsp").forward(req, resp);
		}
		else if("ActivityAddServlet".equals(action)){
			//int aId=Integer.parseInt(req.getParameter("a_id"));
			String aTitle=req.getParameter("a_title");
			String aInfo=req.getParameter("a_info");
			String aPlace=req.getParameter("a_place");
			String aMoney=req.getParameter("a_money");
			String aOrgnized=req.getParameter("a_orgnized");
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			String time=req.getParameter("a_time");
			Date aTime = null;
			try {
				aTime=new Date(sdf.parse(time).getTime());
			} catch (ParseException e) {
				e.printStackTrace();
			}
			Activity activity=new Activity();
			//activity.setaId(aId);
			activity.setaTitle(aTitle);
			activity.setaInfo(aInfo);
			activity.setaPlace(aPlace);
			activity.setaMoney(aMoney);
			activity.setaOrgnized(aOrgnized);
			activity.setaTime(aTime);
			dao.add(activity);
			resp.sendRedirect("ActivityShowServlet.do");
		}else if("ActivityDeleteServlet".equals(action)){
			int id=Integer.parseInt(req.getParameter("id"));
			dao.deleteByID(id);
			resp.sendRedirect("ActivityShowServlet.do");
		}else if("ActivityDetailServlet".equals(action)){
			int id=Integer.parseInt(req.getParameter("id"));
			Activity activity=dao.updateByID(id);
			req.setAttribute("activity", activity);
			req.getRequestDispatcher("view/Activity/activityDetail.jsp").forward(req, resp);
		}else if("ActivityEditServlet".equals(action)){
			int id=Integer.parseInt(req.getParameter("a_id"));
			String aTitle=req.getParameter("a_title");
			String aInfo=req.getParameter("a_info");
			String aPlace=req.getParameter("a_place");
			String aMoney=req.getParameter("a_money");
			String aOrgnized=req.getParameter("a_orgnized");
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			String time=req.getParameter("a_time");
			Date aTime = null;
			try {
				aTime=new Date(sdf.parse(time).getTime());
			} catch (ParseException e) {
				e.printStackTrace();
			}
			Activity activity=dao.updateByID(id);
			activity.setaId(id);
			activity.setaTitle(aTitle);
			activity.setaInfo(aInfo);
			activity.setaPlace(aPlace);
			activity.setaMoney(aMoney);
			activity.setaOrgnized(aOrgnized);
			activity.setaTime(aTime);
			dao.update(activity);
			resp.sendRedirect("ActivityShowServlet.do");
		}else if("ActivityUpdateServlet".equals(action)){
			int id=Integer.parseInt(req.getParameter("id"));
			Activity activity=dao.updateByID(id);
			req.setAttribute("activity", activity);
			req.getRequestDispatcher("view/Activity/activityUpdate.jsp").forward(req, resp);		
		}
	}
}
