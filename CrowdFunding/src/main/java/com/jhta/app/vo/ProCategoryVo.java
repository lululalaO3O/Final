package com.jhta.app.vo;

public class ProCategoryVo {
	private int pro_cat_num;
	private String pro_cat_name;

	public ProCategoryVo() {
	}

	public ProCategoryVo(int pro_cat_num, String pro_cat_name) {
		this.pro_cat_num = pro_cat_num;
		this.pro_cat_name = pro_cat_name;
	}

	public int getPro_cat_num() {
		return pro_cat_num;
	}

	public void setPro_cat_num(int pro_cat_num) {
		this.pro_cat_num = pro_cat_num;
	}

	public String getPro_cat_name() {
		return pro_cat_name;
	}

	public void setPro_cat_name(String pro_cat_name) {
		this.pro_cat_name = pro_cat_name;
	}
}
