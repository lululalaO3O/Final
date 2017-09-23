package com.jhta.app.vo;

import java.sql.Date;

public class NoticeVo {
	private int not_num;
	private int not_cat_num;
	private int admin_num;
	private int mem_num;
	private String not_title;
	private String not_content;
	private Date not_regdate;

	public NoticeVo() {
	}

	public NoticeVo(int not_num, int not_cat_num, int admin_num, int mem_num, String not_title, String not_content, Date not_regdate) {
		this.not_num = not_num;
		this.not_cat_num = not_cat_num;
		this.admin_num = admin_num;
		this.mem_num = mem_num;
		this.not_title = not_title;
		this.not_content = not_content;
		this.not_regdate = not_regdate;
	}

	public int getNot_num() {
		return not_num;
	}

	public void setNot_num(int not_num) {
		this.not_num = not_num;
	}

	public int getNot_cat_num() {
		return not_cat_num;
	}

	public void setNot_cat_num(int not_cat_num) {
		this.not_cat_num = not_cat_num;
	}

	public int getAdmin_num() {
		return admin_num;
	}

	public void setAdmin_num(int admin_num) {
		this.admin_num = admin_num;
	}

	public int getMem_num() {
		return mem_num;
	}

	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}

	public String getNot_title() {
		return not_title;
	}

	public void setNot_title(String not_title) {
		this.not_title = not_title;
	}

	public String getNot_content() {
		return not_content;
	}

	public void setNot_content(String not_content) {
		this.not_content = not_content;
	}

	public Date getNot_regdate() {
		return not_regdate;
	}

	public void setNot_regdate(Date not_regdate) {
		this.not_regdate = not_regdate;
	}
}
