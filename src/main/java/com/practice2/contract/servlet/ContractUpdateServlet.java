package com.practice2.contract.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.practice2.dao.ContractDao;
import com.practice2.dao.HouseDao;
import com.practice2.dao.impl.ContractDaoImpl;
import com.practice2.dao.impl.HouseDaoImpl;
import com.practice2.pojo.Contract;
import com.practice2.pojo.House;

/**
 * Servlet implementation class ContractUpdateServlet
 */
public class ContractUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContractUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		ContractDao dao=new ContractDaoImpl();
		Contract contract=dao.updateByID(id);
		request.setAttribute("contract", contract);
		request.getRequestDispatcher("view/Contract/contractUpdate.jsp").forward(request, response);		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
