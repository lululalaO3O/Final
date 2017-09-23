package com.jhta.app.vo;

public class FundingVo {
	private int fund_num;
	private int pay_num;
	private int bas_num;
	private int mem_num;
	private int nameflag;
	private int payflag;
	private int contribution;
	private String del_addr;
	private String del_req; 
	private String receiver;
	private int fund_status;

	public FundingVo() {
	}

	public FundingVo(int fund_num, int pay_num, int bas_num, int mem_num, int nameflag, int payflag, int contribution, String del_addr, String del_req, String receiver, int fund_status) {
		this.fund_num = fund_num;
		this.pay_num = pay_num;
		this.bas_num = bas_num;
		this.mem_num = mem_num;
		this.nameflag = nameflag;
		this.payflag = payflag;
		this.contribution = contribution;
		this.del_addr = del_addr;
		this.del_req = del_req;
		this.receiver = receiver;
		this.fund_status = fund_status;
	}

	public int getFund_num() {
		return fund_num;
	}

	public void setFund_num(int fund_num) {
		this.fund_num = fund_num;
	}

	public int getPay_num() {
		return pay_num;
	}

	public void setPay_num(int pay_num) {
		this.pay_num = pay_num;
	}

	public int getBas_num() {
		return bas_num;
	}

	public void setBas_num(int bas_num) {
		this.bas_num = bas_num;
	}

	public int getMem_num() {
		return mem_num;
	}

	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}

	public int getNameflag() {
		return nameflag;
	}

	public void setNameflag(int nameflag) {
		this.nameflag = nameflag;
	}

	public int getPayflag() {
		return payflag;
	}

	public void setPayflag(int payflag) {
		this.payflag = payflag;
	}

	public int getContribution() {
		return contribution;
	}

	public void setContribution(int contribution) {
		this.contribution = contribution;
	}

	public String getDel_addr() {
		return del_addr;
	}

	public void setDel_addr(String del_addr) {
		this.del_addr = del_addr;
	}

	public String getDel_req() {
		return del_req;
	}

	public void setDel_req(String del_req) {
		this.del_req = del_req;
	}

	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	public int getFund_status() {
		return fund_status;
	}

	public void setFund_status(int fund_status) {
		this.fund_status = fund_status;
	}
}
