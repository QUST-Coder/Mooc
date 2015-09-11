package com.greatmooc.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.greatmooc.domain.Teacher;


import cn.itcast.jdbc.TxQueryRunner;

public class TeacherDao {
	private QueryRunner qr =  new TxQueryRunner();

	public List<Teacher> findBySch_id(String sch_id) throws SQLException {
		String sql = "select tea_id,tea_name from teacher where sch_id=?";
		return qr.query(sql, new BeanListHandler<Teacher>(Teacher.class), sch_id);
	}
}
