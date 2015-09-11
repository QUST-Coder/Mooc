package com.greatmooc.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.greatmooc.service.TeacherService;


import cn.itcast.servlet.BaseServlet;

public class TeacherServlet extends BaseServlet {
	private TeacherService teacherService = new TeacherService();
	//查找所有教师，实际上只查了前9个，剩下的点击“加载更多”再显示
	public String findAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*
		 * 1.获取pc和 url
		 * 2.通过pc调用service的findAll方法
		 */
		teacherService.findAll();
		return ""; 
	}
}
