package com.jhta.app.vo;

public class InvestmentTypeVo {
	private int inv_type_num;
	private String inv_type_name;
	
	public InvestmentTypeVo() {
		
	}

	public InvestmentTypeVo(int inv_type_num, String inv_type_name) {
		super();
		this.inv_type_num = inv_type_num;
		this.inv_type_name = inv_type_name;
	}

	public int getInv_type_num() {
		return inv_type_num;
	}

	public void setInv_type_num(int inv_type_num) {
		this.inv_type_num = inv_type_num;
	}

	public String getInv_type_name() {
		return inv_type_name;
	}

	public void setInv_type_name(String inv_type_name) {
		this.inv_type_name = inv_type_name;
	}
	
	
}
