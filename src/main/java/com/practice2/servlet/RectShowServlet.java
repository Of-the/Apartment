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

import com.practice2.dao.HouseDao;
import com.practice2.dao.LesseeDao;
import com.practice2.dao.RectDao;
import com.practice2.dao.impl.HouseDaoImpl;
import com.practice2.dao.impl.LesseeDaoImpl;
import com.practice2.dao.impl.RectDaoImpl;
import com.practice2.pojo.House;
import com.practice2.pojo.Lessee;
import com.practice2.pojo.Rect;

/**
 * Servlet implementation class RectShowServlet
 */
public class RectShowServlet extends HttpServlet {
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
		HouseDao housedao=new HouseDaoImpl();
		LesseeDao lesseeDao=new LesseeDaoImpl();
		RectDao dao=new RectDaoImpl();
		if("RectShowServlet".equals(action)){
			List<Rect> rect = dao.selectAll();
			req.setAttribute("rect", rect);
			System.out.println(rect);
			req.getRequestDispatcher("view/Rect/rectList.jsp").forward(req, resp);
		
		}
		else if("RectAddServlet".equals(action)){
			//int rId =Integer.parseInt(req.getParameter("r_id"));
			int hId =Integer.parseInt(req.getParameter("h_id"));
			int lId =Integer.parseInt(req.getParameter("l_id"));
			double rMoney=Double.parseDouble(req.getParameter("r_money"));
			String rRemark=req.getParameter("r_remark");
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			String time=req.getParameter("r_time");
			Date rTime = null;
			try {
				rTime=new Date(sdf.parse(time).getTime());
			} catch (ParseException e) {
				e.printStackTrace();
			}
			Rect rect=new Rect();
			//rect.setrId(rId);
			rect.sethId(hId);
			rect.setlId(lId);
			rect.setrMoney(rMoney);
			rect.setrRemark(rRemark);
			rect.setrTime(rTime);
			dao.add(rect);
			resp.sendRedirect("RectShowServlet.do");
		}else if("RectDeleteServlet".equals(action)){
			int id=Integer.parseInt(req.getParameter("id"));
			dao.deleteByID(id);
			resp.sendRedirect("RectShowServlet.do");
		}else if("RectDetailServlet".equals(action)){
			int id=Integer.parseInt(req.getParameter("id"));
			Rect rect=dao.updateByID(id);
			req.setAttribute("rect", rect);
			req.getRequestDispatcher("view/Rect/rectDetail.jsp").forward(req, resp);

		}else if("RectEditServlet".equals(action)){
			int rId =Integer.parseInt(req.getParameter("r_id"));
			int hId =Integer.parseInt(req.getParameter("h_id"));
			int lId =Integer.parseInt(req.getParameter("l_id"));
			double rMoney=Double.parseDouble(req.getParameter("r_money"));
			String rRemark=req.getParameter("r_remark");
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			String time=req.getParameter("r_time");
			Date rTime = null;
			try {
				rTime=new Date(sdf.parse(time).getTime());
			} catch (ParseException e) {
				e.printStackTrace();
			}
			Rect rect=dao.updateByID(rId);
			rect.setrId(rId);
			rect.sethId(hId);
			rect.setlId(lId);
			rect.setrTime(rTime);
			rect.setrMoney(rMoney);
			rect.setrRemark(rRemark);
			dao.update(rect);
			resp.sendRedirect("RectShowServlet.do");
		}else if("RectUpdateServlet".equals(action)){
			int id=Integer.parseInt(req.getParameter("id"));
			List<House> house=housedao.selectAll();
			List<Lessee> lessee=lesseeDao.selectAll();
			Rect rect=dao.updateByID(id);
			req.setAttribute("rect", rect);
			req.setAttribute("house", house);
			req.setAttribute("lessee", lessee);
			req.getRequestDispatcher("view/Rect/rectUpdate.jsp").forward(req, resp);		
	}
		else if("RectAddFroKey".equals(action)){
			List<House> house=housedao.selectAll();
			List<Lessee> lessee=lesseeDao.selectAll();
			req.setAttribute("house", house);
			req.setAttribute("lessee", lessee);
			req.getRequestDispatcher("view/Rect/rectAdd.jsp").forward(req, resp);	
		}
	}
}
