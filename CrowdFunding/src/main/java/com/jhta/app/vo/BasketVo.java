package com.jhta.app.vo;

public class BasketVo {
	private int bsk_num;
	private int rew_num;
	private int mem_num;
	private int ea;
	private String bas_option;
	private int bas_cart;
	
	public BasketVo() {
	}

	public BasketVo(int bsk_num, int rew_num, int mem_num, int ea, String bas_option, int bas_cart) {
		super();
		this.bsk_num = bsk_num;
		this.rew_num = rew_num;
		this.mem_num = mem_num;
		this.ea = ea;
		this.bas_option = bas_option;
		this.bas_cart = bas_cart;
	}

	public int getBsk_num() {
		return bsk_num;
	}

	public void setBsk_num(int bsk_num) {
		this.bsk_num = bsk_num;
	}

	public int getRew_num() {
		return rew_num;
	}

	public void setRew_num(int rew_num) {
		this.rew_num = rew_num;
	}

	public int getMem_num() {
		return mem_num;
	}

	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}

	public int getEa() {
		return ea;
	}

	public void setEa(int ea) {
		this.ea = ea;
	}

	public String getBas_option() {
		return bas_option;
	}

	public void setBas_option(String bas_option) {
		this.bas_option = bas_option;
	}

	public int getBas_cart() {
		return bas_cart;
	}

	public void setBas_cart(int bas_cart) {
		this.bas_cart = bas_cart;
	}
	
}
