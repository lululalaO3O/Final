package com.jhta.app.vo;

public class InquiryCategoryVo {
	private int inq_cat_num;
	private String inq_cat_name;

	public InquiryCategoryVo() {
	}

	public InquiryCategoryVo(int inq_cat_num, String inq_cat_name) {
		this.inq_cat_num = inq_cat_num;
		this.inq_cat_name = inq_cat_name;
	}

	public int getInq_cat_num() {
		return inq_cat_num;
	}

	public void setInq_cat_num(int inq_cat_num) {
		this.inq_cat_num = inq_cat_num;
	}

	public String getInq_cat_name() {
		return inq_cat_name;
	}

	public void setInq_cat_name(String inq_cat_name) {
		this.inq_cat_name = inq_cat_name;
	}
}
