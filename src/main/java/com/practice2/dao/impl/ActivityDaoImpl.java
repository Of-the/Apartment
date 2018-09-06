package com.practice2.dao.impl;

import java.util.List;

import com.practice2.dao.ActivityDao;
import com.practice2.pojo.Activity;
import com.practice2.pojo.Rect;
import com.practice2.util.JDBCUtil;

public class ActivityDaoImpl implements ActivityDao{

	public void add(Activity e) {
		String sql="INSERT INTO Activity VALUES(?,?,?,?,?,?,?)";
		JDBCUtil.daDMLWithSQL(sql,null,e.getaTime(),e.getaTitle(),e.getaInfo(),e.getaPlace(),e.getaMoney(),e.getaOrgnized());
		
	}

	public void deleteByID(int id) {
		String sql="delete from Activity where a_id=?";
		JDBCUtil.daDMLWithSQL(sql, id);
	}

	public void update(Activity e) {
		String sql="update Activity set a_time=?,a_title=?,a_info=?,a_place=?,a_money=?,a_orgnized=? where a_id=?";
		JDBCUtil.daDMLWithSQL(sql,e.getaTime(),e.getaTitle(),e.getaInfo(),e.getaPlace(),e.getaMoney(),e.getaOrgnized(),e.getaId());
		
	}

	public List<Activity> selectAll() {
		String sql="select * from Activity ";
		return JDBCUtil.dbDQLWithSQL(sql, Activity.class);
	}

	public Activity updateByID(int id) {
		String sql="select * from Activity where a_id=?";
		return JDBCUtil.dbDQLWithSQL(sql, Activity.class, id).get(0);
	}



}
