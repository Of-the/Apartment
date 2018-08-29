package com.practice2.util;

import java.lang.reflect.Field;

import javax.servlet.http.HttpServletRequest;



public class ToolUtil {
	public static void main(String[] args) {
		
		System.out.println(getColumnName("h_id"));
	}
	public static String getColumnName(String str){
		String c1=str.substring(0,str.lastIndexOf('_'));
		String c2=str.substring(str.lastIndexOf('_')+1);
		String c3=c2.substring(0,1).toUpperCase()+c2.substring(1).toLowerCase();		
		return c1+c3;
	}
	 public static void getParameters(HttpServletRequest req, Object o) {
	        Field[] declaredFields = o.getClass().getDeclaredFields();
	        for (Field field : declaredFields
	                ) {
	            String parameter = req.getParameter(field.getName());
	            try {
	                //对此对象进行操作
	                field.set(o, parameter);
	            } catch (IllegalAccessException e) {
	                e.printStackTrace();
	            }
	        }
	    }

}
