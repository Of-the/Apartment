package com.practice2.contract.servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.practice2.dao.ContractDao;
import com.practice2.dao.impl.ContractDaoImpl;
import com.practice2.pojo.Contract;

/**
 * Servlet implementation class ContractShowServlet
 */
public class ContractShowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContractShowServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ContractDao dao=new ContractDaoImpl();
		List<Contract> contract=dao.selectAll();
		request.setAttribute("contract", contract);
		System.out.println(contract);
		request.getRequestDispatcher("view/Contract/contractList.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
