package com.practice2.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.practice2.dao.HouseDao;
import com.practice2.pojo.House;
import com.practice2.util.JDBCUtil;

public class HouseDaoImpl implements HouseDao{

	
	public void add(House e) {
		String sql="INSERT INTO House VALUES(null,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,now(),now())";
		JDBCUtil.daDMLWithSQL(sql,e.gethArea(),e.gethEstate(),e.gethUnitnumber(),e.gethFloor(),e.gethRoomno(),e.gethAcreage(),e.gethDirection(),e.gethFitment(),e.gethIsdoubleair(),e.gethLimit(),e.gethFacility(),e.gethPrice(),e.gethStatus(),e.gethImg(),e.gethAddress(),e.gethAddtime(),e.gethUpdatetime());
	}

	public void deleteByID(int id) {
		String sql="update House set h_status=-2 where h_id=?";
		JDBCUtil.daDMLWithSQL(sql, id);
	}

	public void update(House e) {
		String sql="UPDATE House SET h_area=?,h_estate=?,h_unitNumber=?,h_floor=?,h_roomNo=?,h_acreage=?,h_direction=?,h_fitment=?,h_isDoubleAir=?,h_limit=?,h_facility=?,h_price=?, h_status=?,h_img=?,h_address=?,h_addtime=?,h_updateTime=?  WHERE h_id=?";
		JDBCUtil.daDMLWithSQL(sql,e.gethArea(),e.gethEstate(),e.gethUnitnumber(),e.gethFloor(),e.gethRoomno(),e.gethAcreage(),e.gethDirection(),e.gethFitment(),e.gethIsdoubleair(),e.gethLimit(),e.gethFacility(),e.gethPrice(),e.gethStatus(),e.gethImg(),e.gethAddress(),e.gethAddtime(),e.gethUpdatetime(),e.gethId());
	}

	public List<House> selectAll() {
		String sql="SELECT * FROM House where h_status=2";
		return JDBCUtil.dbDQLWithSQL(sql, House.class);
		
	}

	public int sum() {
		String sql="select count(h_id) from House where status=2";
		Connection connection=JDBCUtil.getConnection();
		try {
			PreparedStatement pS=connection.prepareStatement(sql);
			ResultSet set= pS.executeQuery();
			set.next();
			int count= set.getInt("count(h_id)");
			set.close();
			pS.close();
			connection.close();
			return count;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	
	public List<House> selectAllByPage(int page, int count) {
		String sql="select *from House where status=2 LIMIT "+page+","+ count;
		return JDBCUtil.dbDQLWithSQL(sql, House.class);
	}

	public House updateByID(int id) {
		String sql="select * from House where h_id=?";
		return JDBCUtil.dbDQLWithSQL(sql, House.class, id).get(0);

	}


}
