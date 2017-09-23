package com.jhta.app.vo;

import java.util.Date;

public class InvestmentVo {
	private int inv_num;
	private int inv_cat_num;
	private int comp_num;
	private int stock_num;
	private int bond_num;
	private int investor_num;
	private int inv_goal_num;
	private Date inv_startdate;
	private Date inv_deadline;
	private Date inv_instock_date;
	private int inv_issue;
	private int inv_price;
	private int inv_min;
	
	public InvestmentVo() {
		
	}

	public InvestmentVo(int inv_num, int inv_cat_num, int comp_num, int stock_num, int bond_num, int investor_num,
			int inv_goal_num, Date inv_startdate, Date inv_deadline, Date inv_instock_date, int inv_issue,
			int inv_price, int inv_min) {
		super();
		this.inv_num = inv_num;
		this.inv_cat_num = inv_cat_num;
		this.comp_num = comp_num;
		this.stock_num = stock_num;
		this.bond_num = bond_num;
		this.investor_num = investor_num;
		this.inv_goal_num = inv_goal_num;
		this.inv_startdate = inv_startdate;
		this.inv_deadline = inv_deadline;
		this.inv_instock_date = inv_instock_date;
		this.inv_issue = inv_issue;
		this.inv_price = inv_price;
		this.inv_min = inv_min;
	}

	public int getInv_num() {
		return inv_num;
	}

	public void setInv_num(int inv_num) {
		this.inv_num = inv_num;
	}

	public int getInv_cat_num() {
		return inv_cat_num;
	}

	public void setInv_cat_num(int inv_cat_num) {
		this.inv_cat_num = inv_cat_num;
	}

	public int getComp_num() {
		return comp_num;
	}

	public void setComp_num(int comp_num) {
		this.comp_num = comp_num;
	}

	public int getStock_num() {
		return stock_num;
	}

	public void setStock_num(int stock_num) {
		this.stock_num = stock_num;
	}

	public int getBond_num() {
		return bond_num;
	}

	public void setBond_num(int bond_num) {
		this.bond_num = bond_num;
	}

	public int getInvestor_num() {
		return investor_num;
	}

	public void setInvestor_num(int investor_num) {
		this.investor_num = investor_num;
	}

	public int getInv_goal_num() {
		return inv_goal_num;
	}

	public void setInv_goal_num(int inv_goal_num) {
		this.inv_goal_num = inv_goal_num;
	}

	public Date getInv_startdate() {
		return inv_startdate;
	}

	public void setInv_startdate(Date inv_startdate) {
		this.inv_startdate = inv_startdate;
	}

	public Date getInv_deadline() {
		return inv_deadline;
	}

	public void setInv_deadline(Date inv_deadline) {
		this.inv_deadline = inv_deadline;
	}

	public Date getInv_instock_date() {
		return inv_instock_date;
	}

	public void setInv_instock_date(Date inv_instock_date) {
		this.inv_instock_date = inv_instock_date;
	}

	public int getInv_issue() {
		return inv_issue;
	}

	public void setInv_issue(int inv_issue) {
		this.inv_issue = inv_issue;
	}

	public int getInv_price() {
		return inv_price;
	}

	public void setInv_price(int inv_price) {
		this.inv_price = inv_price;
	}

	public int getInv_min() {
		return inv_min;
	}

	public void setInv_min(int inv_min) {
		this.inv_min = inv_min;
	}
}
