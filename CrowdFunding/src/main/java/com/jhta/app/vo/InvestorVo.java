package com.jhta.app.vo;

public class InvestorVo {
	private int investor_num;
	private int mem_num;
	private int admin_num;
	private int investor_state;
	private String investor_pic;
	
	public InvestorVo() {
		
	}

	public InvestorVo(int investor_num, int mem_num, int admin_num, int investor_state, String investor_pic) {
		super();
		this.investor_num = investor_num;
		this.mem_num = mem_num;
		this.admin_num = admin_num;
		this.investor_state = investor_state;
		this.investor_pic = investor_pic;
	}

	public int getInvestor_num() {
		return investor_num;
	}

	public void setInvestor_num(int investor_num) {
		this.investor_num = investor_num;
	}

	public int getMem_num() {
		return mem_num;
	}

	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}

	public int getAdmin_num() {
		return admin_num;
	}

	public void setAdmin_num(int admin_num) {
		this.admin_num = admin_num;
	}

	public int getInvestor_state() {
		return investor_state;
	}

	public void setInvestor_state(int investor_state) {
		this.investor_state = investor_state;
	}

	public String getInvestor_pic() {
		return investor_pic;
	}

	public void setInvestor_pic(String investor_pic) {
		this.investor_pic = investor_pic;
	}
	
}
