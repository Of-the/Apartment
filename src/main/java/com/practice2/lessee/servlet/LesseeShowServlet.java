package com.practice2.lessee.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.practice2.dao.LesseeDao;
import com.practice2.dao.impl.LesseeDaoImpl;
import com.practice2.pojo.Lessee;

/**
 * Servlet implementation class LesseeShowServlet
 */
public class LesseeShowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LesseeShowServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LesseeDao dao=new LesseeDaoImpl();
		List<Lessee> lessee = dao.selectAll();
		request.setAttribute("lessee", lessee);
		System.out.println(lessee);
		request.getRequestDispatcher("view/Lesse/lesseeList.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
