package com.practice2.util;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ValidateCode extends HttpServlet{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//0.�����հ�ͼƬ
		BufferedImage image = new BufferedImage(100, 30, BufferedImage.TYPE_INT_RGB);
		//1.��ȡͼƬ����
		Graphics g = image.getGraphics();
		Random r = new Random();
		//2.���û��ʵ���ɫ
		g.setColor(new Color(r.nextInt(255),r.nextInt(255),r.nextInt(255)));
		//3.���ƾ��εı���
		g.fillRect(0, 0, 100, 30);
		//4.�����Զ���ķ�������ȡ����Ϊ5����ĸ��ϵ��ַ���
		String number = getNumber(5);
		//�����ɵ���֤��ŵ�Session����
		HttpSession session = req.getSession();
		session.setAttribute("code", number);
		g.setColor(new Color(0,0,0));
		g.setFont(new Font(null, Font.BOLD, 24));
		//5.������ɫ����󣬻����ַ���
		g.drawString(number, 5, 25);
		//6.����8��������
		for (int i = 0; i < 8; i++) {
			g.setColor(new Color(r.nextInt(255), r.nextInt(255),r.nextInt(25), r.nextInt(25)));
			g.drawLine(r.nextInt(100), r.nextInt(30), r.nextInt(100), r.nextInt(30));
		}
		resp.setContentType("image/jpeg");
		OutputStream ops = resp.getOutputStream();
		ImageIO.write(image, "jpeg", ops);
		ops.close();
	}
	private String getNumber(int size) {
		String str = "ZBCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
		String number = "";
		Random r = new Random();
		for(int i=0;i<size;i++) {
			number += str.charAt(r.nextInt(str.length()));
		}
		return number;
	}
}
