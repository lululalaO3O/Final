package com.jhta.app.vo;

public class MeminfoVo {
	private int mem_num;
	private String introduction;
	private String company;
	private String duty;
	private String school;
	private String major;
	private String profilename;
	private String addr;
	private int phone;

	public MeminfoVo() {
	}

	public MeminfoVo(int mem_num, String introduction, String company, String duty, String school, String major, String profilename, String addr, int phone) {
		this.mem_num = mem_num;
		this.introduction = introduction;
		this.company = company;
		this.duty = duty;
		this.school = school;
		this.major = major;
		this.profilename = profilename;
		this.addr = addr;
		this.phone = phone;
	}

	public int getMem_num() {
		return mem_num;
	}

	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getDuty() {
		return duty;
	}

	public void setDuty(String duty) {
		this.duty = duty;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getProfilename() {
		return profilename;
	}

	public void setProfilename(String profilename) {
		this.profilename = profilename;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}
}
