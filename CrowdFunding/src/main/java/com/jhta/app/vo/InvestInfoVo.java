package com.jhta.app.vo;

public class InvestInfoVo {
	private int inv_info_num;
	private int inv_num;
	
	public InvestInfoVo() {
		
	}

	public InvestInfoVo(int inv_info_num, int inv_num) {
		super();
		this.inv_info_num = inv_info_num;
		this.inv_num = inv_num;
	}

	public int getInv_info_num() {
		return inv_info_num;
	}

	public void setInv_info_num(int inv_info_num) {
		this.inv_info_num = inv_info_num;
	}

	public int getInv_num() {
		return inv_num;
	}

	public void setInv_num(int inv_num) {
		this.inv_num = inv_num;
	}
	
}
