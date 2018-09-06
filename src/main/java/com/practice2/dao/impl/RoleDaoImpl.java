package com.practice2.dao.impl;

import java.util.List;

import com.practice2.dao.RoleDao;
import com.practice2.pojo.Role;
import com.practice2.pojo.User;
import com.practice2.util.JDBCUtil;

public class RoleDaoImpl implements RoleDao{

	public void add(Role e) {
		String sql="insert into Role values(?,?,?,?)";
		JDBCUtil.daDMLWithSQL(sql,null,e.getrName(),e.getrDesc(),e.getrAddtime());
	}

	public void deleteByID(int id) {
		String sql="delete from  Role where role_id=?";
		JDBCUtil.daDMLWithSQL(sql, id);
	}

	public void update(Role e) {
		String sql="UPDATE Role SET r_name=?,r_desc=?,r_addtime=? WHERE role_id=?";
		JDBCUtil.daDMLWithSQL(sql,e.getrName(),e.getrDesc(),e.getrAddtime(),e.getRoleId());
	
		
	}

	public List<Role> selectAll() {
		String sql="select * from Role ";
		return JDBCUtil.dbDQLWithSQL(sql, Role.class);
	}

	public Role updateByID(int id) {
		String sql="select * from Role where role_id=?";
		return JDBCUtil.dbDQLWithSQL(sql, Role.class, id).get(0);

	}

}
