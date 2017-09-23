package com.jhta.app.vo;

public class NoticeCategoryVo {
	private int not_cat_num;
	private String not_cat_name;

	public NoticeCategoryVo() {
	}

	public NoticeCategoryVo(int not_cat_num, String not_cat_name) {
		this.not_cat_num = not_cat_num;
		this.not_cat_name = not_cat_name;
	}

	public int getNot_cat_num() {
		return not_cat_num;
	}

	public void setNot_cat_num(int not_cat_num) {
		this.not_cat_num = not_cat_num;
	}

	public String getNot_cat_name() {
		return not_cat_name;
	}

	public void setNot_cat_name(String not_cat_name) {
		this.not_cat_name = not_cat_name;
	}
}
