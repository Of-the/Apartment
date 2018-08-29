package com.practice2.lessee.servlet;

import java.io.IOException;
import java.sql.Date;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.practice2.dao.LesseeDao;
import com.practice2.dao.impl.LesseeDaoImpl;
import com.practice2.pojo.Lessee;

/**
 * Servlet implementation class LesseeEditServlet
 */
public class LesseeEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LesseeEditServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int lId=Integer.parseInt(request.getParameter("id"));
		String lName=request.getParameter("l_name");
		String lTel=request.getParameter("l_tel");
		char lSex= request.getParameter("l_sex").charAt(0);
		String lNativeplace =request.getParameter("l_nativeplace");
		String lIdcard=request.getParameter("l_idcard");
		Date lAddtime=Date.valueOf(request.getParameter("l_addtime"));
		LesseeDao dao=new LesseeDaoImpl();
		Lessee lessee=dao.updateByID(lId);
		lessee.setlId(lId);
		lessee.setlName(lName);
		lessee.setlTel(lTel);
		lessee.setlSex(lSex);
		lessee.setlNativeplace(lNativeplace);
		lessee.setlIdcard(lIdcard);
		lessee.setlAddtime(lAddtime);
		dao.update(lessee);
		response.sendRedirect("LesseeShowServlet");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
