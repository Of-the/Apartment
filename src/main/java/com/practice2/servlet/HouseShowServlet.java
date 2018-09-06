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
import com.practice2.dao.impl.HouseDaoImpl;
import com.practice2.pojo.House;
import com.practice2.util.ToolUtil;


/**
 * Servlet implementation class HouseShowServlet
 */
public class HouseShowServlet extends HttpServlet {
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
		HouseDao dao=new HouseDaoImpl();
		if("HouseShowServlet".equals(action)){
			List<House> house=dao.selectAll();
			req.setAttribute("house", house);
			//System.out.println(house);
			req.getRequestDispatcher("view/House/houseList.jsp").forward(req, resp);
		}
		else if("HouseAddServlet".equals(action)){
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			//int hId =Integer.parseInt(req.getParameter("h_id"));
			String hArea =req.getParameter("h_area");
			String hEstate =req.getParameter("h_estate");
			String hUnitNumber =req.getParameter("h_unitNumber");
			int hFloor =Integer.parseInt(req.getParameter("h_floor"));
			String hRoomNo =req.getParameter("h_roomNo");
			String hAcreage =req.getParameter("h_acreage");
			String hDirection =req.getParameter("h_direction");
			String hFitment =req.getParameter("h_fitment");
			boolean hIsDoubleAir=Boolean.parseBoolean(req.getParameter("h_isDoubleAir"));
			int hLimit =Integer.parseInt(req.getParameter("h_limit"));
			String hFacility =req.getParameter("h_facility");
			double hPrice =Double.parseDouble(req.getParameter("h_price"));
			int hStatus =Integer.parseInt(req.getParameter("h_status"));
			String hImg=req.getParameter("h_img");
			String hAddress=req.getParameter("h_address");
			String time1=req.getParameter("h_addtime");
			String time2=req.getParameter("h_updatetime");
			Date hAddtime = null;
			Date hUpdatetime = null;
			try {
				hAddtime = new Date(sdf.parse(time1).getTime());
				hUpdatetime = new Date(sdf.parse(time2).getTime());
			} catch (ParseException e) {
				e.printStackTrace();
			}
			House house=new House();
		//	house.sethId(hId);
			house.sethArea(hArea);
			house.sethEstate(hEstate);
			house.sethUnitnumber(hUnitNumber);
			house.sethFloor(hFloor);
			house.sethRoomno(hRoomNo);
			house.sethAcreage(hAcreage);
			house.sethDirection(hDirection);
			house.sethFitment(hFitment);
			house.sethIsdoubleair(hIsDoubleAir);
			house.sethLimit(hLimit);
			house.sethFacility(hFacility);
			house.sethPrice(hPrice);
			house.sethStatus(hStatus);
			house.sethImg("http://localhost:8080/Apartment/static/image/"+hImg);
			house.sethAddress(hAddress);
			house.sethAddtime(hAddtime);
			house.sethUpdatetime(hUpdatetime);
			dao.add(house);
			resp.sendRedirect("HouseShowServlet.do");
		}else if("HouseDeleteServlet".equals(action)){
			int id=Integer.parseInt(req.getParameter("id"));
			dao.deleteByID(id);
			resp.sendRedirect("HouseShowServlet.do");
		}else if("HouseDetailServlet".equals(action)){
			int id=Integer.parseInt(req.getParameter("id"));
			House house=dao.updateByID(id);
			req.setAttribute("house", house);
			req.getRequestDispatcher("view/House/houseDetail.jsp").forward(req, resp);
		}else if("HouseEditServlet".equals(action)){
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
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
			String hAddress=req.getParameter("h_address");
			String time1=req.getParameter("h_addtime");
			String time2=req.getParameter("h_updatetime");
			Date hAddtime = null;
			Date hUpdatetime = null;
			try {
				hAddtime = new Date(sdf.parse(time1).getTime());
				hUpdatetime = new Date(sdf.parse(time2).getTime());
			} catch (ParseException e) {
				e.printStackTrace();
			}
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
			house.sethStatus(hStatus);
			house.sethAddress(hAddress);
			house.sethAddtime(hAddtime);
			house.sethUpdatetime(hUpdatetime);
			System.out.println(house);
			dao.update(house);
			resp.sendRedirect("HouseShowServlet.do");
		}else if("HouseUpdateServlet".equals(action)){
			int id=Integer.parseInt(req.getParameter("id"));
			House house=dao.updateByID(id);
			req.setAttribute("house", house);
			req.getRequestDispatcher("view/House/houseUpdate.jsp").forward(req, resp);		
		}
		else if("HouseSearchServlet".equals(action)){
			  String hAddress = req.getParameter("h_address");
			  List<House> house = dao.searchByAddress(hAddress);
			  req.setAttribute("house", house);
			  System.out.println(house);
			  req.getRequestDispatcher("view/House/test.jsp").forward(req, resp);
		}
	}

}
