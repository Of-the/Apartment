package com.practice2.house.servlet;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.practice2.dao.HouseDao;
import com.practice2.dao.impl.HouseDaoImpl;
import com.practice2.pojo.House;



public class HouseAddServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/**
     * @see HttpServlet#HttpServlet()
     */
    public HouseAddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int hId =Integer.parseInt(req.getParameter("h_id"));
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
		String hImg=req.getParameter("h_img");
		String hAddress=req.getParameter("h_address");
		Date hAddtime=Date.valueOf(req.getParameter("h_addtime"));
		Date hUpdatetime=Date.valueOf(req.getParameter("h_updatetime"));
		House house=new House();
		HouseDao dao=new HouseDaoImpl();
		house.sethId(hId);
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
		house.sethImg(hImg);
		//house.sethAddress(hAddress);
		//house.sethAddtime(hAddtime);
		dao.add(house);
		System.out.println("添加成功");
		resp.sendRedirect("HouseShowServlet");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}

}
