package com.jhta.app.vo;

import java.sql.Date;

public class RewardVo {
	private int rew_num;
	private int pro_num;
	private String rew_name;
	private int price;
	private String detail;
	private int del_flag;
	private int del_pee;
	private int limit_ea;
	private int amount;
	private Date del_startdate;

	public RewardVo() {
	}

	public RewardVo(int rew_num, int pro_num, String rew_name, int price, String detail, int del_flag, int del_pee, int limit_ea, int amount, Date del_startdate) {
		this.rew_num = rew_num;
		this.pro_num = pro_num;
		this.rew_name = rew_name;
		this.price = price;
		this.detail = detail;
		this.del_flag = del_flag;
		this.del_pee = del_pee;
		this.limit_ea = limit_ea;
		this.amount = amount;
		this.del_startdate = del_startdate;
	}

	public int getRew_num() {
		return rew_num;
	}

	public void setRew_num(int rew_num) {
		this.rew_num = rew_num;
	}

	public int getPro_num() {
		return pro_num;
	}

	public void setPro_num(int pro_num) {
		this.pro_num = pro_num;
	}

	public String getRew_name() {
		return rew_name;
	}

	public void setRew_name(String rew_name) {
		this.rew_name = rew_name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public int getDel_flag() {
		return del_flag;
	}

	public void setDel_flag(int del_flag) {
		this.del_flag = del_flag;
	}

	public int getDel_pee() {
		return del_pee;
	}

	public void setDel_pee(int del_pee) {
		this.del_pee = del_pee;
	}

	public int getLimit_ea() {
		return limit_ea;
	}

	public void setLimit_ea(int limit_ea) {
		this.limit_ea = limit_ea;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public Date getDel_startdate() {
		return del_startdate;
	}

	public void setDel_startdate(Date del_startdate) {
		this.del_startdate = del_startdate;
	}
}
