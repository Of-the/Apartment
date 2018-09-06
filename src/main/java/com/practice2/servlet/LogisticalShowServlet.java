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

import com.practice2.dao.LogisticalDao;
import com.practice2.dao.LogisticalDao;
import com.practice2.dao.impl.LogisticalDaoImpl;
import com.practice2.dao.impl.LogisticalDaoImpl;
import com.practice2.pojo.Logistical;
import com.practice2.pojo.Logistical;

/**
 * Servlet implementation class LogisticalShowServlet
 */
public class LogisticalShowServlet extends HttpServlet {
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
		LogisticalDao dao=new LogisticalDaoImpl();
		if("LogisticalShowServlet".equals(action)){
			List<Logistical> logistical = dao.selectAll();
			req.setAttribute("logistical", logistical);
			req.getRequestDispatcher("view/Logistical/logisticalList.jsp").forward(req, resp);
		}
		else if("LogisticalAddServlet".equals(action)){
			//int lpId=Integer.parseInt(req.getParameter("lp_id"));
			String lpName=req.getParameter("lp_name");
			String lpIdcard=req.getParameter("l_idcard");
			String lpTel=req.getParameter("lp_tel");
			String lpSex=req.getParameter("lp_sex");
			String lpJob=req.getParameter("lp_job");
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			String time=req.getParameter("lp_addtime");
			Date lpAddtime = null;
			try {
				lpAddtime = new Date(sdf.parse(time).getTime());
			} catch (ParseException e) {
				e.printStackTrace();
			}
			double lpSalary=Double.parseDouble(req.getParameter("lp_salary"));
			String lNativeplace=req.getParameter("lp_nativeplace");
			Logistical logistical=new Logistical();
			//logistical.setLpId(lpId);
			logistical.setLpName(lpName);
			logistical.setLpTel(lpTel);
			logistical.setLpSex(lpSex);
			logistical.setLpNativeplace(lNativeplace);
			logistical.setLpIdcard(lpIdcard);
			logistical.setLpJob(lpJob);
			logistical.setLpAddtime(lpAddtime);
			logistical.setLpSalary(lpSalary);
			dao.add(logistical);
			System.out.println(logistical);
			resp.sendRedirect("LogisticalShowServlet.do");
		}else if("LogisticalDeleteServlet".equals(action)){
			int id=Integer.parseInt(req.getParameter("id"));
			dao.deleteByID(id);
			resp.sendRedirect("LogisticalShowServlet.do");
		}else if("LogisticalDetailServlet".equals(action)){
			int id=Integer.parseInt(req.getParameter("id"));
			Logistical logistical=dao.updateByID(id);
			req.setAttribute("logistical", logistical);
			req.getRequestDispatcher("view/Logistical/logisticalDetail.jsp").forward(req, resp);
		}else if("LogisticalEditServlet".equals(action)){
			int lpId=Integer.parseInt(req.getParameter("lp_id"));
			String lpName=req.getParameter("lp_name");
			String lpIdcard=req.getParameter("lp_idcard");
			String lpTel=req.getParameter("lp_tel");
			String lpSex=req.getParameter("lp_sex");
			String lpJob=req.getParameter("lp_job");
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			String time=req.getParameter("lp_addtime");
			Date lpAddtime = null;
			try {
				lpAddtime = new Date(sdf.parse(time).getTime());
			} catch (ParseException e) {
				e.printStackTrace();
			}
			double lpSalary=Double.parseDouble(req.getParameter("lp_salary"));
			String lNativeplace=req.getParameter("lp_nativeplace");
			Logistical logistical=dao.updateByID(lpId);
			logistical.setLpId(lpId);
			logistical.setLpName(lpName);
			logistical.setLpTel(lpTel);
			logistical.setLpSex(lpSex);
			logistical.setLpNativeplace(lNativeplace);
			logistical.setLpIdcard(lpIdcard);
			logistical.setLpAddtime(lpAddtime);
			logistical.setLpSalary(lpSalary);
			logistical.setLpJob(lpJob);
			dao.update(logistical);
			System.out.println(logistical);
			resp.sendRedirect("LogisticalShowServlet.do");
		}else if("LogisticalUpdateServlet".equals(action)){
			int id=Integer.parseInt(req.getParameter("id"));
			Logistical logistical=dao.updateByID(id);
			req.setAttribute("logistical", logistical);
			req.getRequestDispatcher("view/Logistical/logisticalUpdate.jsp").forward(req, resp);		

	}

	}

}
