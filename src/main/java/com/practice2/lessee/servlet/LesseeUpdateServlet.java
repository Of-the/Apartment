package com.practice2.lessee.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.practice2.dao.HouseDao;
import com.practice2.dao.LesseeDao;
import com.practice2.dao.impl.HouseDaoImpl;
import com.practice2.dao.impl.LesseeDaoImpl;
import com.practice2.pojo.House;
import com.practice2.pojo.Lessee;

/**
 * Servlet implementation class LesseeUpdateServlet
 */
public class LesseeUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LesseeUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		LesseeDao dao=new LesseeDaoImpl();
		Lessee lessee=dao.updateByID(id);
		request.setAttribute("lessee", lessee);
		request.getRequestDispatcher("view/Lessee/lesseeUpdate.jsp").forward(request, response);		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
