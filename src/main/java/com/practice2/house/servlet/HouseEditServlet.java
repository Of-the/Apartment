package com.practice2.house.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.practice2.dao.HouseDao;
import com.practice2.dao.impl.HouseDaoImpl;
import com.practice2.pojo.House;

/**
 * Servlet implementation class HouseEditServlet
 */
public class HouseEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HouseEditServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
		int id =Integer.parseInt(req.getParameter("h_id"));
		String hArea =req.getParameter("h_area");
		String hEstate =req.getParameter("h_estate");
		String hUnitNumber =req.getParameter("h_unitNumber");
		int hFloor =Integer.parseInt(req.getParameter("h_floor"));
		String hRoomNo =req.getParameter("h_roomNo");
		String hAcreage =req.getParameter("h_acreage");
		String hDirection =req.getParameter("h_direction");
		String hFitment =req.getParameter("h_fitment");
		String hIsDoubleAir =req.getParameter("h_isDoubleAir");
		int hLimit =Integer.parseInt(req.getParameter("h_limit"));
		String hFacility =req.getParameter("h_facility");
		double hPrice =Double.parseDouble(req.getParameter("h_price"));
		int hStatus =Integer.parseInt(req.getParameter("h_status"));
		HouseDao dao=new HouseDaoImpl();
		House house=dao.updateByID(id);
		house.sethId(id);
		house.sethArea(hArea);
		house.sethEstate(hEstate);
		house.sethUnitnumber(hUnitNumber);
		house.sethFloor(hFloor);
		house.sethRoomno(hRoomNo);
		house.sethAcreage(hAcreage);
		house.sethDirection(hDirection);
		house.sethFitment(hFitment);
		house.sethIsdoubleair(Boolean.parseBoolean(hIsDoubleAir));
		house.sethLimit(hLimit);
		house.sethFacility(hFacility);
		house.sethPrice(hPrice);
		house.sethStatus(2);
		System.out.println(house);
		dao.update(house);
		response.sendRedirect("HouseShowServlet");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
