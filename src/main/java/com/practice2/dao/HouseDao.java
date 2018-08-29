package com.practice2.dao;

import com.practice2.core.baseDao.BaseDao;
import com.practice2.pojo.House;

public interface HouseDao extends BaseDao<House>{
	public House updateByID(int id);
}
