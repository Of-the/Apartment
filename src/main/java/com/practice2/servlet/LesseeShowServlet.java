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

import com.practice2.dao.LesseeDao;

import com.practice2.dao.impl.LesseeDaoImpl;

import com.practice2.pojo.Lessee;


/**
 * Servlet implementation class LesseeShowServlet
 */
public class LesseeShowServlet extends HttpServlet {
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
		LesseeDao dao=new LesseeDaoImpl();
		if("LesseeShowServlet".equals(action)){
			List<Lessee> lessee = dao.selectAll();
			req.setAttribute("lessee", lessee);
			req.getRequestDispatcher("view/Lessee/lesseeList.jsp").forward(req, resp);
		}
		else if("LesseeAddServlet".equals(action)){
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			//int lId=Integer.parseInt(req.getParameter("l_id"));
			String lName=req.getParameter("l_name");
			String lTel=req.getParameter("l_tel");
			String lSex=req.getParameter("l_sex");
			String lNativeplace=req.getParameter("l_nativeplace");
			String lIdcard=req.getParameter("l_idcard");
			String time=req.getParameter("l_addtime");
			Date lAddtime=null;
			try {
				lAddtime=new Date(sdf.parse(time).getTime());
			} catch (Exception e) {
				e.printStackTrace();	
			}
			Lessee lessee=new Lessee();
			//lessee.setlId(lId);
			lessee.setlName(lName);
			lessee.setlTel(lTel);
			lessee.setlSex(lSex);
			lessee.setlNativeplace(lNativeplace);
			lessee.setlIdcard(lIdcard);
			lessee.setlAddtime(lAddtime);
			dao.add(lessee);
			System.out.println(lessee);
			resp.sendRedirect("LesseeShowServlet.do");
		}else if("LesseeDeleteServlet".equals(action)){
			int id=Integer.parseInt(req.getParameter("id"));
			dao.deleteByID(id);
			resp.sendRedirect("LesseeShowServlet.do");
		}else if("LesseeDetailServlet".equals(action)){
			int id=Integer.parseInt(req.getParameter("id"));
			Lessee lessee=dao.updateByID(id);
			req.setAttribute("lessee", lessee);
			req.getRequestDispatcher("view/Lessee/lesseeDetail.jsp").forward(req, resp);

		}else if("LesseeEditServlet".equals(action)){
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			int lId=Integer.parseInt(req.getParameter("l_id"));
			String lName=req.getParameter("l_name");
			String lTel=req.getParameter("l_tel");
			String lSex=req.getParameter("l_sex");
			String lNativeplace =req.getParameter("l_nativeplace");
			String lIdcard=req.getParameter("l_idcard");
			String time=req.getParameter("l_addtime");
			Date lAddtime=null;
			try {
				lAddtime=new Date(sdf.parse(time).getTime());
			} catch (Exception e) {
				e.printStackTrace();	
			}
			Lessee lessee=dao.updateByID(lId);
			lessee.setlId(lId);
			lessee.setlName(lName);
			lessee.setlTel(lTel);
			lessee.setlSex(lSex);
			lessee.setlNativeplace(lNativeplace);
			lessee.setlIdcard(lIdcard);
			lessee.setlAddtime(lAddtime);
			dao.update(lessee);
			resp.sendRedirect("LesseeShowServlet.do");
		}else if("LesseeUpdateServlet".equals(action)){
			int id=Integer.parseInt(req.getParameter("id"));
			Lessee lessee=dao.updateByID(id);
			req.setAttribute("lessee", lessee);
			req.getRequestDispatcher("view/Lessee/lesseeUpdate.jsp").forward(req, resp);		

		}
	}

	
}
