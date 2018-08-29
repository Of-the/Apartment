package com.practice2.dao.impl;

import java.util.List;

import com.practice2.dao.ContractDao;
import com.practice2.pojo.Contract;
import com.practice2.util.JDBCUtil;

public class ContractDaoImpl implements ContractDao{

	public void add(Contract e) {
		String sql=" insert into Contract values(null,?,?,?,?,?,?,?,?,?,?,?)";
		JDBCUtil.daDMLWithSQL(sql, e.getcNumber(),e.gethId(),e.getlId(),e.getcTime(),e.getcStarttime(),e.getcEndtime(),e.getcMoney(),e.getcPay(),e.getcDeposit(),e.getcPeriods(),e.getcPeople(),e.getcStatus());
	}

	public void deleteByID(int id) {
		String sql="delete from Contract where c_id=?";
		JDBCUtil.daDMLWithSQL(sql, id);
	}

	public void update(Contract e) {
		String sql="update Contract set c_number=?,c_h_id=?,l_id=?,c_time=?,c_starttime=?,c_endtime=?,c_money=?,c_pay=?,c_deposit=?,c_people=?,c_status=?   where c_id=? ";
		JDBCUtil.daDMLWithSQL(sql, e.getcNumber(),e.gethId(),e.getlId(),e.getcTime(),e.getcStarttime(),e.getcEndtime(),e.getcMoney(),e.getcPay(),e.getcDeposit(),e.getcPeriods(),e.getcPeople(),e.getcStatus(),e.getcId());
	}

	public List<Contract> selectAll() {
		String sql="select * from Contract";
		return JDBCUtil.dbDQLWithSQL(sql, Contract.class);
	}

	public Contract updateByID(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public int sum() {
		// TODO Auto-generated method stub
		return 0;
	}

	public List<Contract> selectAllByPage(int page, int count) {
		// TODO Auto-generated method stub
		return null;
	}

}
