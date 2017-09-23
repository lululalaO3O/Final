package com.jhta.app.vo;

public class MembersVo {
	private int mem_num;
	private String id;
	private String nickname;
	private String pwd;
	private String jumin;
	private String jumin1;
	private String jumin2;

	public MembersVo() {
	}

	public MembersVo(int mem_num, String id, String nickname, String pwd, String jumin) {
		this.mem_num = mem_num;
		this.id = id;
		this.nickname = nickname;
		this.pwd = pwd;
		this.jumin = jumin;
	}

	public int getMem_num() {
		return mem_num;
	}

	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getJumin() {
		return jumin;
	}

	public void setJumin(String jumin) {
		this.jumin = jumin;
	}

	public String getJumin1() {
		return jumin1;
	}

	public void setJumin1(String jumin1) {
		this.jumin1 = jumin1;
	}

	public String getJumin2() {
		return jumin2;
	}

	public void setJumin2(String jumin2) {
		this.jumin2 = jumin2;
	}
}
