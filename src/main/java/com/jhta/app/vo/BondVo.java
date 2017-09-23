package com.jhta.app.vo;

import java.util.Date;

public class BondVo {
	private int bond_num;
	private int inv_type_num;
	private String inv_interestcycle;
	private Date inv_expiry;
	
	public BondVo() {
		
	}

	public BondVo(int bond_num, int inv_type_num, String inv_interestcycle, Date inv_expiry) {
		super();
		this.bond_num = bond_num;
		this.inv_type_num = inv_type_num;
		this.inv_interestcycle = inv_interestcycle;
		this.inv_expiry = inv_expiry;
	}

	public int getBond_num() {
		return bond_num;
	}

	public void setBond_num(int bond_num) {
		this.bond_num = bond_num;
	}

	public int getInv_type_num() {
		return inv_type_num;
	}

	public void setInv_type_num(int inv_type_num) {
		this.inv_type_num = inv_type_num;
	}

	public String getInv_interestcycle() {
		return inv_interestcycle;
	}

	public void setInv_interestcycle(String inv_interestcycle) {
		this.inv_interestcycle = inv_interestcycle;
	}

	public Date getInv_expiry() {
		return inv_expiry;
	}

	public void setInv_expiry(Date inv_expiry) {
		this.inv_expiry = inv_expiry;
	}
}
