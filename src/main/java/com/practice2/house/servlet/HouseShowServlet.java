package com.practice2.house.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.practice2.dao.HouseDao;
import com.practice2.dao.impl.HouseDaoImpl;
import com.practice2.pojo.House;


/**
 * Servlet implementation class HouseShowServlet
 */
public class HouseShowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HouseShowServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
		HouseDao dao=new HouseDaoImpl();
		List<House> house=dao.selectAll();
		req.setAttribute("house", house);
		System.out.println(house);
		req.getRequestDispatcher("view/House/houseList.jsp").forward(req, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
