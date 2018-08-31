package com.practice2.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.practice2.dao.UserDao;
import com.practice2.pojo.House;
import com.practice2.pojo.User;
import com.practice2.util.JDBCUtil;

public class UserDaoImpl implements UserDao{

	public void add(User e) {
		String sql="insert into User values(?,?,?,?,?,?)";
		JDBCUtil.daDMLWithSQL(sql,e.getUserId(), e.getUserName(),e.getUserPassword(),e.getUserPhone(),e.getUserAddress(),e.getUserStatus());
	}

	public void deleteByID(int id) {
		String sql="delete from  User where user_id=?";
		JDBCUtil.daDMLWithSQL(sql, id);
	}

	public void update(User e) {
		String sql="UPDATE User SET user_name=?,user_password=?,user_phone=?,user_address=?,user_status=? WHERE user_id=?";
		JDBCUtil.daDMLWithSQL(sql, e.getUserName(),e.getUserPassword(),e.getUserPhone(),e.getUserAddress(),e.getUserId());
	}

	public List<User> selectAll() {
		String sql="select * from User ";
		return JDBCUtil.dbDQLWithSQL(sql, User.class);
	}
	
	public User userLogin(String user_name, String user_password) {
		User user=null;
		try {
			String sql="select * from User where user_name=? and user_password=?";
			Connection connection=JDBCUtil.getConnection();
			PreparedStatement ps=connection.prepareStatement(sql);
			ps.setString(1, user_name);
			ps.setString(2, user_password);
			ResultSet rs= ps.executeQuery();
			if(rs.next()) {
				user=new User();
				user.setUserName(rs.getString("user_name"));
				user.setUserPassword(rs.getString("user_password"));
			}
			System.out.println();
		connection.close();
		ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	
	}

	public int sum() {
		// TODO Auto-generated method stub
		return 0;
	}

	public List<User> selectAllByPage(int page, int count) {
		// TODO Auto-generated method stub
		return null;
	}

	public User updateByID(int id) {
		String sql="select * from User where user_id=?";
		return JDBCUtil.dbDQLWithSQL(sql, User.class, id).get(0);

	}

	public User findByUserName(String user_name) {
		String sql="select * from User where user_name=?";
		return (User) JDBCUtil.dbDQLWithSQL(sql, User.class,user_name);
		
	}

}
