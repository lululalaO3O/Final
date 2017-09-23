package com.jhta.app.vo;

public class InterestcategoryVo {
	private int inum;
	private String interest;
	public InterestcategoryVo() {}
	public InterestcategoryVo(int inum, String interest) {
		super();
		this.inum = inum;
		this.interest = interest;
	}
	public int getInum() {
		return inum;
	}
	public void setInum(int inum) {
		this.inum = inum;
	}
	public String getInterest() {
		return interest;
	}
	public void setInterest(String interest) {
		this.interest = interest;
	}
}
