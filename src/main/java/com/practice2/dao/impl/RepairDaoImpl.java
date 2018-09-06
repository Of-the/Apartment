package com.practice2.dao.impl;

import java.util.List;

import com.practice2.dao.RepairDao;
import com.practice2.pojo.Repair;
import com.practice2.util.JDBCUtil;

public class RepairDaoImpl  implements RepairDao{

	public void add(Repair e) {
		String sql="insert into Repair values(?,?,?,?,?,?,?)";
		JDBCUtil.daDMLWithSQL(sql, null,e.gethId(),e.getLpId(),
				e.getRaInfo(),e.getRaTime(),e.getRaEnd(),e.getRaDesc());
	}

	public void deleteByID(int id) {
		String sql="delete from Repair where ra_id=?";
		JDBCUtil.daDMLWithSQL(sql, id);
	}

	public void update(Repair e) {
		String sql="update Repair set h_id=?,lp_id=?,ra_info=?,ra_time=?,ra_end=?,ra_desc=? where ra_id=?";
		JDBCUtil.daDMLWithSQL(sql,e.gethId(),e.getLpId(),
				e.getRaInfo(),e.getRaTime(),e.getRaEnd(),e.getRaDesc(),e.getRaId() );
	}

	public List<Repair> selectAll() {
		String sql="select * from Repair";
		return JDBCUtil.dbDQLWithSQL(sql, Repair.class);
	}

	public Repair updateByID(int id) {
		String sql="select * from Repair where ra_id=?";
		return JDBCUtil.dbDQLWithSQL(sql, Repair.class, id).get(0);

	}

	public int sum() {
		// TODO Auto-generated method stub
		return 0;
	}

	public List<Repair> selectAllByPage(int page, int count) {
		// TODO Auto-generated method stub
		return null;
	}

}
