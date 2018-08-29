package com.practice2.contract.servlet;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.practice2.dao.ContractDao;
import com.practice2.dao.impl.ContractDaoImpl;
import com.practice2.pojo.Contract;

/**
 * Servlet implementation class ContractAddServlet
 */
public class ContractAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContractAddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int cId=Integer.parseInt(request.getParameter("c_id"));
		int cNumber=Integer.parseInt(request.getParameter("c_number"));
		int hId=Integer.parseInt(request.getParameter("h_id"));
		int lId=Integer.parseInt(request.getParameter("l_id"));
		Date cTime=Date.valueOf(request.getParameter("c_time"));
		Date cStarttime=Date.valueOf(request.getParameter("c_starttime"));
		Date cEndtime=Date.valueOf(request.getParameter("c_endtime"));
		String cMoney=request.getParameter("c_money");
		String cPay=request.getParameter("c_pay");
		int cDeposit=Integer.parseInt(request.getParameter("c_deposit"));
		int cPeriods=Integer.parseInt(request.getParameter("c_periods"));
		String cPeople=request.getParameter("c_people");
		int cStatus=Integer.parseInt(request.getParameter("c_status"));
		Contract contract=new Contract();
		ContractDao dao=new ContractDaoImpl();
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
		dao.add(contract);
		response.sendRedirect("ContractShowServlet");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
