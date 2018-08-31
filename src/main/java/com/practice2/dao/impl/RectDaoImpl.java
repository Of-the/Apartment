package com.practice2.dao.impl;

import java.util.List;

import com.practice2.dao.RectDao;
import com.practice2.pojo.Lessee;
import com.practice2.pojo.Rect;
import com.practice2.util.JDBCUtil;

public class RectDaoImpl implements RectDao{

	public void add(Rect e) {
		String sql="INSERT INTO Rect VALUES(?,?,?,?,now(),?)";
		JDBCUtil.daDMLWithSQL(sql,e.getrId(), e.gethId(),e.getlId(),e.getrMoney(),e.getrRemark());

	}

	public void deleteByID(int id) {
		String sql="delete from Rect where r_id=?";
		JDBCUtil.daDMLWithSQL(sql, id);
	}

	public void update(Rect e) {
		String sql="update Rect set h_id=?,l_id=?,r_money=?,r_time=?,r_remark=? where r_id=?";
		JDBCUtil.daDMLWithSQL(sql,e.gethId(),e.getlId(),e.getrMoney(),e.getrTime(),e.getrRemark(),e.getrId());
		
	}

	public List<Rect> selectAll() {
		String sql="select * from Rect ";
		return JDBCUtil.dbDQLWithSQL(sql, Rect.class);
	}

	public Rect updateByID(int id) {
		String sql="select * from Rect where r_id=?";
		return JDBCUtil.dbDQLWithSQL(sql, Rect.class, id).get(0);
	}
}
