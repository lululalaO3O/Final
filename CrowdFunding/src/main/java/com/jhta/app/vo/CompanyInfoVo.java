package com.jhta.app.vo;

import java.sql.Date;

public class CompanyInfoVo {
	private int comp_num;
	private int comp_state;
	private String comp_name;
	private String comp_email;
	private String comp_url;
	private String comp_line;
	private String comp_addr;
	private String comp_sns;
	private Date comp_birthday;
	private String comp_boss;
	private int comp_mems;
	private int comp_criminal;
	private int in_eva_num;

	public CompanyInfoVo() {
	}

	public CompanyInfoVo(int comp_num, int comp_state, String comp_name, String comp_email, String comp_url, String comp_line, String comp_addr, String comp_sns, Date comp_birthday, String comp_boss, int comp_mems, int comp_criminal, int in_eva_num) {
		this.comp_num = comp_num;
		this.comp_state = comp_state;
		this.comp_name = comp_name;
		this.comp_email = comp_email;
		this.comp_url = comp_url;
		this.comp_line = comp_line;
		this.comp_addr = comp_addr;
		this.comp_sns = comp_sns;
		this.comp_birthday = comp_birthday;
		this.comp_boss = comp_boss;
		this.comp_mems = comp_mems;
		this.comp_criminal = comp_criminal;
		this.in_eva_num = in_eva_num;
	}

	public int getComp_num() {
		return comp_num;
	}

	public void setComp_num(int comp_num) {
		this.comp_num = comp_num;
	}

	public int getComp_state() {
		return comp_state;
	}

	public void setComp_state(int comp_state) {
		this.comp_state = comp_state;
	}

	public String getComp_name() {
		return comp_name;
	}

	public void setComp_name(String comp_name) {
		this.comp_name = comp_name;
	}

	public String getComp_email() {
		return comp_email;
	}

	public void setComp_email(String comp_email) {
		this.comp_email = comp_email;
	}

	public String getComp_url() {
		return comp_url;
	}

	public void setComp_url(String comp_url) {
		this.comp_url = comp_url;
	}

	public String getComp_line() {
		return comp_line;
	}

	public void setComp_line(String comp_line) {
		this.comp_line = comp_line;
	}

	public String getComp_addr() {
		return comp_addr;
	}

	public void setComp_addr(String comp_addr) {
		this.comp_addr = comp_addr;
	}

	public String getComp_sns() {
		return comp_sns;
	}

	public void setComp_sns(String comp_sns) {
		this.comp_sns = comp_sns;
	}

	public Date getComp_birthday() {
		return comp_birthday;
	}

	public void setComp_birthday(Date comp_birthday) {
		this.comp_birthday = comp_birthday;
	}

	public String getComp_boss() {
		return comp_boss;
	}

	public void setComp_boss(String comp_boss) {
		this.comp_boss = comp_boss;
	}

	public int getComp_mems() {
		return comp_mems;
	}

	public void setComp_mems(int comp_mems) {
		this.comp_mems = comp_mems;
	}

	public int getComp_criminal() {
		return comp_criminal;
	}

	public void setComp_criminal(int comp_criminal) {
		this.comp_criminal = comp_criminal;
	}

	public int getIn_eva_num() {
		return in_eva_num;
	}

	public void setIn_eva_num(int in_eva_num) {
		this.in_eva_num = in_eva_num;
	}
}
