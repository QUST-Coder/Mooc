package com.greatmooc.service;

import java.sql.SQLException;
import java.util.List;

import com.greatmooc.dao.TeacherDao;
import com.greatmooc.domain.Teacher;


public class TeacherService {
	private TeacherDao teacherDao = new TeacherDao();

	public void findAll() {
		// TODO Auto-generated method stub
		
	}

	public List<Teacher> findBySchool(String sch_id) {
		try {
			return teacherDao.findBySch_id(sch_id);
		} catch (SQLException e) {
			throw new RuntimeException("按sch_id查找教师出错了"+e);
		}
	}
}
