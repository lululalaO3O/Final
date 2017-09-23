package com.jhta.app.vo;

public class AdministratorVo {
	private int admin_num;
	private String admin_id;
	private String admin_pwd;
	private String admin_nick;
	private String admin_pic;

	public AdministratorVo() {
	}

	public AdministratorVo(int admin_num, String admin_id, String admin_pwd, String admin_nick, String admin_pic) {
		this.admin_num = admin_num;
		this.admin_id = admin_id;
		this.admin_pwd = admin_pwd;
		this.admin_nick = admin_nick;
		this.admin_pic = admin_pic;
	}

	public int getAdmin_num() {
		return admin_num;
	}

	public void setAdmin_num(int admin_num) {
		this.admin_num = admin_num;
	}

	public String getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}

	public String getAdmin_pwd() {
		return admin_pwd;
	}

	public void setAdmin_pwd(String admin_pwd) {
		this.admin_pwd = admin_pwd;
	}

	public String getAdmin_nick() {
		return admin_nick;
	}

	public void setAdmin_nick(String admin_nick) {
		this.admin_nick = admin_nick;
	}

	public String getAdmin_pic() {
		return admin_pic;
	}

	public void setAdmin_pic(String admin_pic) {
		this.admin_pic = admin_pic;
	}
}
