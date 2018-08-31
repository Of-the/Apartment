package com.practice2.dao;



import com.practice2.core.baseDao.BaseDao;
import com.practice2.pojo.User;

public interface UserDao extends BaseDao<User>{
	User userLogin(String user_name,String user_password);
	public User findByUserName(String user_name);
}
