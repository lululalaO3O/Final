package com.jhta.app.vo;

import java.util.Date;

public class ProjectVo {
	private int pro_num;
	private int pro_cat_num;
	private int mem_num;
	private String title;
	private String tag;
	private int goal;
	private String wrapimg;
	private Date regdate;
	private Date startdate;
	private Date deadline;
	private int adult;
	private int confirm;
	private int pro_status;
	private int pro_type;
	
	public ProjectVo() {
		
	}

	public ProjectVo(int pro_num, int pro_cat_num, int mem_num, String title, String tag, int goal, String wrapimg,
			Date regdate, Date startdate, Date deadline, int adult, int confirm, int pro_status, int pro_type) {
		super();
		this.pro_num = pro_num;
		this.pro_cat_num = pro_cat_num;
		this.mem_num = mem_num;
		this.title = title;
		this.tag = tag;
		this.goal = goal;
		this.wrapimg = wrapimg;
		this.regdate = regdate;
		this.startdate = startdate;
		this.deadline = deadline;
		this.adult = adult;
		this.confirm = confirm;
		this.pro_status = pro_status;
		this.pro_type = pro_type;
	}

	public int getPro_num() {
		return pro_num;
	}

	public void setPro_num(int pro_num) {
		this.pro_num = pro_num;
	}

	public int getPro_cat_num() {
		return pro_cat_num;
	}

	public void setPro_cat_num(int pro_cat_num) {
		this.pro_cat_num = pro_cat_num;
	}

	public int getMem_num() {
		return mem_num;
	}

	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public int getGoal() {
		return goal;
	}

	public void setGoal(int goal) {
		this.goal = goal;
	}

	public String getWrapimg() {
		return wrapimg;
	}

	public void setWrapimg(String wrapimg) {
		this.wrapimg = wrapimg;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public Date getStartdate() {
		return startdate;
	}

	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}

	public Date getDeadline() {
		return deadline;
	}

	public void setDeadline(Date deadline) {
		this.deadline = deadline;
	}

	public int getAdult() {
		return adult;
	}

	public void setAdult(int adult) {
		this.adult = adult;
	}

	public int getConfirm() {
		return confirm;
	}

	public void setConfirm(int confirm) {
		this.confirm = confirm;
	}

	public int getPro_status() {
		return pro_status;
	}

	public void setPro_status(int pro_status) {
		this.pro_status = pro_status;
	}

	public int getPro_type() {
		return pro_type;
	}

	public void setPro_type(int pro_type) {
		this.pro_type = pro_type;
	}
	
	
}
