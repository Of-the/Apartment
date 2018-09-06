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

import com.practice2.dao.ContractDao;
import com.practice2.dao.HouseDao;
import com.practice2.dao.LesseeDao;
import com.practice2.dao.impl.ContractDaoImpl;
import com.practice2.dao.impl.HouseDaoImpl;
import com.practice2.dao.impl.LesseeDaoImpl;
import com.practice2.pojo.Contract;
import com.practice2.pojo.House;
import com.practice2.pojo.Lessee;


/**
 * Servlet implementation class ContractShowServlet
 */
public class ContractShowServlet extends HttpServlet {
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
		ContractDao dao=new ContractDaoImpl();
		HouseDao housedao=new HouseDaoImpl();
		LesseeDao lesseeDao=new LesseeDaoImpl();
		if("ContractShowServlet".equals(action)){
			List<Contract> contract=dao.selectAll();
			req.setAttribute("contract", contract);
			req.getRequestDispatcher("view/Contract/contractList.jsp").forward(req, resp);
		}
		else if("ContractAddServlet".equals(action)){
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			//int cId=Integer.parseInt(req.getParameter("c_id"));
			int cNumber=Integer.parseInt(req.getParameter("c_number"));
			int hId=Integer.parseInt(req.getParameter("h_id"));
			int lId=Integer.parseInt(req.getParameter("l_id"));
			String time=req.getParameter("c_time");
			String time1=req.getParameter("c_starttime");
			String time2=req.getParameter("c_endtime");
			Date cTime = null;
			Date cStarttime = null;
			Date cEndtime = null;
			try {
				cTime=new Date(sdf.parse(time).getTime());
				cStarttime = new Date(sdf.parse(time1).getTime());
				cEndtime = new Date(sdf.parse(time2).getTime());
			} catch (ParseException e) {
				e.printStackTrace();
			}
			String cMoney=req.getParameter("c_money");
			String cPay=req.getParameter("c_pay");
			int cDeposit=Integer.parseInt(req.getParameter("c_deposit"));
			int cPeriods=Integer.parseInt(req.getParameter("c_periods"));
			String cPeople=req.getParameter("c_people");
			int cStatus=Integer.parseInt(req.getParameter("c_status"));
			Contract contract=new Contract();
			//contract.setcId(cId);
			contract.setcNumber(cNumber);
			contract.sethId(hId);
			contract.setlId(lId);
			contract.setcTime(cTime);
			contract.setcStarttime(cStarttime);
			contract.setcEndtime(cEndtime);
			contract.setcMoney(cMoney);
			contract.setcPay(cPay);
			contract.setcPeriods(cPeriods);
			contract.setcDeposit(cDeposit);
			contract.setcPeople(cPeople);
			contract.setcStatus(cStatus);
			dao.add(contract);
			resp.sendRedirect("ContractShowServlet.do");
		}else if("ContractDeleteServlet".equals(action)){
			int cId=Integer.parseInt(req.getParameter("id"));
			dao.deleteByID(cId);
			resp.sendRedirect("ContractShowServlet.do");
		}else if("ContractDetailServlet".equals(action)){
			int id=Integer.parseInt(req.getParameter("id"));
			Contract contract=dao.updateByID(id);
			req.setAttribute("contract", contract);
			req.getRequestDispatcher("view/Contract/contractDetail.jsp").forward(req, resp);

		}else if("ContractEditServlet".equals(action)){
			int cId=Integer.parseInt(req.getParameter("id"));
			int cNumber=Integer.parseInt(req.getParameter("c_number"));
			int hId=Integer.parseInt(req.getParameter("h_id"));
			int lId=Integer.parseInt(req.getParameter("l_id"));
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			String time=req.getParameter("c_time");
			String time1=req.getParameter("c_starttime");
			String time2=req.getParameter("c_endtime");
			Date cTime = null;
			Date cStarttime = null;
			Date cEndtime = null;
			try {
				cTime=new Date(sdf.parse(time).getTime());
				cStarttime = new Date(sdf.parse(time1).getTime());
				cEndtime = new Date(sdf.parse(time2).getTime());
			} catch (ParseException e) {
				e.printStackTrace();
			}
			String cMoney=req.getParameter("c_money");
			String cPay=req.getParameter("c_pay");
			int cDeposit=Integer.parseInt(req.getParameter("c_deposit"));
			int cPeriods=Integer.parseInt(req.getParameter("c_periods"));
			String cPeople=req.getParameter("c_people");
			int cStatus=Integer.parseInt(req.getParameter("c_status"));
			Contract contract=dao.updateByID(cId);
			contract.setcId(cId);
			contract.setcNumber(cNumber);
			contract.sethId(hId);
			contract.setlId(lId);
			contract.setcTime(cTime);
			contract.setcStarttime(cStarttime);
			contract.setcEndtime(cEndtime);
			contract.setcMoney(cMoney);
			contract.setcPay(cPay);
			contract.setcPeriods(cPeriods);
			contract.setcDeposit(cDeposit);
			contract.setcPeople(cPeople);
			contract.setcStatus(cStatus);
			dao.update(contract);
			resp.sendRedirect("ContractShowServlet.do");
		}else if("ContractUpdateServlet".equals(action)){
			List<House> house=housedao.selectAll();
			List<Lessee> lessee=lesseeDao.selectAll();
			int id=Integer.parseInt(req.getParameter("id"));
			Contract contract=dao.updateByID(id);
			req.setAttribute("contract", contract);
			req.setAttribute("house", house);
			req.setAttribute("lessee", lessee);
			req.getRequestDispatcher("view/Contract/contractUpdate.jsp").forward(req, resp);		
	}
		else if("AddFroKey".equals(action)){
			List<House> house=housedao.selectAll();
			List<Lessee> lessee=lesseeDao.selectAll();
			req.setAttribute("house", house);
			req.setAttribute("lessee", lessee);
			req.getRequestDispatcher("view/Contract/contractAdd.jsp").forward(req, resp);	
		}
	}
}
