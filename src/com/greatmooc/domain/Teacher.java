package com.greatmooc.domain;

import java.util.List;

public class Teacher {
	private String tea_id;//教师编号
	private String tea_name;//教师名
	private String tea_bimg;//教师大头像
	private String tea_simg;//教师小头像
	private String tea_desc;//教师简介
	private School school;//所属学校
	private List<Course> courses;//所属该教师的课程
	public String getTea_id() {
		return tea_id;
	}
	public void setTea_id(String tea_id) {
		this.tea_id = tea_id;
	}
	public String getTea_name() {
		return tea_name;
	}
	public void setTea_name(String tea_name) {
		this.tea_name = tea_name;
	}
	public String getTea_bimg() {
		return tea_bimg;
	}
	public void setTea_bimg(String tea_bimg) {
		this.tea_bimg = tea_bimg;
	}
	public String getTea_simg() {
		return tea_simg;
	}
	public void setTea_simg(String tea_simg) {
		this.tea_simg = tea_simg;
	}
	public String getTea_desc() {
		return tea_desc;
	}
	public void setTea_desc(String tea_desc) {
		this.tea_desc = tea_desc;
	}
	public School getSchool() {
		return school;
	}
	public void setSchool(School school) {
		this.school = school;
	}
	public List<Course> getCourses() {
		return courses;
	}
	public void setCourses(List<Course> courses) {
		this.courses = courses;
	}
	
}
