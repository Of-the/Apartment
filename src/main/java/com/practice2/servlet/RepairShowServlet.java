package com.practice2.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.practice2.dao.HouseDao;
import com.practice2.dao.LogisticalDao;
import com.practice2.dao.RepairDao;
import com.practice2.dao.RepairDao;
import com.practice2.dao.impl.HouseDaoImpl;
import com.practice2.dao.impl.LogisticalDaoImpl;
import com.practice2.dao.impl.RepairDaoImpl;
import com.practice2.dao.impl.RepairDaoImpl;
import com.practice2.pojo.House;
import com.practice2.pojo.Lessee;
import com.practice2.pojo.Logistical;
import com.practice2.pojo.Repair;

/**
 * Servlet implementation class RepairShowServlet
 */
public class RepairShowServlet extends HttpServlet {
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
		RepairDao dao=new RepairDaoImpl();
		HouseDao housedao=new HouseDaoImpl();
		LogisticalDao logisticaldao=new LogisticalDaoImpl();
		if("RepairShowServlet".equals(action)){
			List<Repair> repair=dao.selectAll();
			req.setAttribute("repair", repair);
			//System.out.println(repair);
			req.getRequestDispatcher("view/Repair/repairList.jsp").forward(req, resp);
		}
		else if("RepairAddServlet".equals(action)){
			//int raId=Integer.parseInt(req.getParameter("ra_id"));
			int hId=Integer.parseInt(req.getParameter("h_id"));
			int lpId=Integer.parseInt(req.getParameter("lp_id"));
			String raInfo=req.getParameter("ra_info");
			Date date=new Date(System.currentTimeMillis());
			String raEnd=req.getParameter("ra_end");
			String raDesc=req.getParameter("ra_desc");
			Repair repair=new Repair();
			//repair.setRaId(raId);
			repair.sethId(hId);
			repair.setLpId(lpId);
			repair.setRaInfo(raInfo);
			repair.setRaTime(date);
			repair.setRaEnd(raEnd);
			repair.setRaDesc(raDesc);
			dao.add(repair);
			resp.sendRedirect("RepairShowServlet.do");
		}else if("RepairDeleteServlet".equals(action)){
			int id=Integer.parseInt(req.getParameter("id"));
			dao.deleteByID(id);
			resp.sendRedirect("RepairShowServlet.do");
		}else if("RepairDetailServlet".equals(action)){
			int id=Integer.parseInt(req.getParameter("id"));
			Repair repair=dao.updateByID(id);
			req.setAttribute("repair", repair);
			req.getRequestDispatcher("view/Repair/repairDetail.jsp").forward(req, resp);
		}else if("RepairEditServlet".equals(action)){
			int id=Integer.parseInt(req.getParameter("ra_id"));
			int hId=Integer.parseInt(req.getParameter("h_id"));
			int lpId=Integer.parseInt(req.getParameter("lp_id"));
			String raInfo=req.getParameter("ra_info");
			Date date=new Date(System.currentTimeMillis());
			String raEnd=req.getParameter("ra_end");
			String raDesc=req.getParameter("ra_desc");
			Repair repair=dao.updateByID(id);
			repair.setRaId(id);
			repair.sethId(hId);
			repair.setLpId(lpId);
			repair.setRaInfo(raInfo);
			repair.setRaTime(date);
			repair.setRaEnd(raEnd);
			repair.setRaDesc(raDesc);
			dao.update(repair);
			resp.sendRedirect("RepairShowServlet.do");
		}else if("RepairUpdateServlet".equals(action)){
			List<House> house=housedao.selectAll();
			List<Logistical> logistical=logisticaldao.selectAll();
			req.setAttribute("house", house);
			req.setAttribute("logistical", logistical);
			int id=Integer.parseInt(req.getParameter("id"));
			Repair repair=dao.updateByID(id);
			req.setAttribute("repair", repair);
			req.getRequestDispatcher("view/Repair/repairUpdate.jsp").forward(req, resp);		
	}
		else if("RepairAddFroKey".equals(action)){
			List<House> house=housedao.selectAll();
			List<Logistical> logistical=logisticaldao.selectAll();
			req.setAttribute("house", house);
			req.setAttribute("logistical", logistical);
			req.getRequestDispatcher("view/Repair/repairAdd.jsp").forward(req, resp);	

		}
	}
}
