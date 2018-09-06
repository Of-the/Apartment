package com.practice2.dao.impl;

import java.util.List;

import com.practice2.dao.LogisticalDao;
import com.practice2.pojo.Logistical;
import com.practice2.util.JDBCUtil;

public class LogisticalDaoImpl implements LogisticalDao{

	public void add(Logistical e) {
		String sql="Insert into Logistical values(?,?,?,?,?,?,?,?,?)";
		JDBCUtil.daDMLWithSQL(sql,null, e.getLpName(),e.getLpIdcard(),
				e.getLpTel(),e.getLpSex(),e.getLpJob(),e.getLpAddtime(),e.getLpSalary(),e.getLpNativeplace());
	}

	public void deleteByID(int id) {
		String sql="delete  from Logistical  where lp_id=?";
		JDBCUtil.daDMLWithSQL(sql, id);
	}

	public void update(Logistical e) {
		String sql="update Logistical set lp_name=?,lp_idcard=?,lp_tel=?,"
				+ "lp_sex=?,lp_job=?,lp_addtime=?,lp_salary=?,lp_nativeplace=? where lp_id=?";
		JDBCUtil.daDMLWithSQL(sql,  e.getLpName(),e.getLpIdcard(),
				e.getLpTel(),e.getLpSex(),e.getLpJob(),e.getLpAddtime(),e.getLpSalary(),e.getLpNativeplace(),e.getLpId());

	}

	public List<Logistical> selectAll() {
		String sql="select * from Logistical";
		return JDBCUtil.dbDQLWithSQL(sql, Logistical.class);
	}

	public Logistical updateByID(int id) {
		String sql="select * from Logistical where lp_id=?";
		return JDBCUtil.dbDQLWithSQL(sql, Logistical.class, id).get(0);
	}


}
