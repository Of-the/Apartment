package com.practice2.core.baseDao;

import java.util.List;

import com.practice2.pojo.House;

public interface BaseDao<E> {
	public void add(E e);
	public void deleteByID(int id);
	public void update(E e);
	public List<E>selectAll();
	public E updateByID(int id) ;
	public int sum();
	public List<E> selectAllByPage(int page, int count);
	
}
