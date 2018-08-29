package com.practice2.dao.impl;

import java.util.List;

import com.practice2.dao.LesseeDao;
import com.practice2.pojo.House;
import com.practice2.pojo.Lessee;
import com.practice2.util.JDBCUtil;

public class LesseeDaoImpl implements LesseeDao{

	public void add(Lessee e) {
		String sql="INSERT INTO lessee VALUES(?,?,?,?,?,?,?)";
		JDBCUtil.daDMLWithSQL(sql,e.getlId(),e.getlName(),e.getlTel(),e.getlSex(),e.getlNativeplace(),e.getlIdcard(),e.getlAddtime() );
	}

	public void deleteByID(int id) {
		String sql="DELETE FROM lessee WHERE l_id=?";
		JDBCUtil.daDMLWithSQL(sql, id);
	}

	public void update(Lessee e) {
		String sql="UPDATE lessee SET l_name=?,l_tel=?,l_sex=?,l_nativeplace=?,l_idcard=?,l_addtime=? WHERE l_id";
		JDBCUtil.daDMLWithSQL(sql, e.getlName(),e.getlTel(),e.getlSex(),e.getlNativeplace(),e.getlIdcard(),e.getlAddtime(),e.getlId());
	}

	public List<Lessee> selectAll() {
		String sql="SELECT * FROM Lessee ";
		return JDBCUtil.dbDQLWithSQL(sql, Lessee.class);
	}

	public int sum() {
		// TODO Auto-generated method stub
		return 0;
	}

	public List<Lessee> selectAllByPage(int page, int count) {
		// TODO Auto-generated method stub
		return null;
	}

	public Lessee updateByID(int id) {
		String sql="select * from Lessee where l_id=?";
		return JDBCUtil.dbDQLWithSQL(sql, Lessee.class, id).get(0);
	}


}
