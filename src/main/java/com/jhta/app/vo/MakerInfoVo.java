package com.jhta.app.vo;

public class MakerInfoVo {
	private int mk_num;
	private int pro_num;
	private String mk_name;
	private String mk_pic;
	private String mk_face;
	private String mk_twit;
	private String mk_insta;
	private String mk_url;
	private String mk_email;
	private String mk_tel;

	public MakerInfoVo() {
	}

	public MakerInfoVo(int mk_num, int pro_num, String mk_name, String mk_pic, String mk_face, String mk_twit, String mk_insta, String mk_url, String mk_email, String mk_tel) {
		this.mk_num = mk_num;
		this.pro_num = pro_num;
		this.mk_name = mk_name;
		this.mk_pic = mk_pic;
		this.mk_face = mk_face;
		this.mk_twit = mk_twit;
		this.mk_insta = mk_insta;
		this.mk_url = mk_url;
		this.mk_email = mk_email;
		this.mk_tel = mk_tel;
	}

	public int getMk_num() {
		return mk_num;
	}

	public void setMk_num(int mk_num) {
		this.mk_num = mk_num;
	}

	public int getPro_num() {
		return pro_num;
	}

	public void setPro_num(int pro_num) {
		this.pro_num = pro_num;
	}

	public String getMk_name() {
		return mk_name;
	}

	public void setMk_name(String mk_name) {
		this.mk_name = mk_name;
	}

	public String getMk_pic() {
		return mk_pic;
	}

	public void setMk_pic(String mk_pic) {
		this.mk_pic = mk_pic;
	}

	public String getMk_face() {
		return mk_face;
	}

	public void setMk_face(String mk_face) {
		this.mk_face = mk_face;
	}

	public String getMk_twit() {
		return mk_twit;
	}

	public void setMk_twit(String mk_twit) {
		this.mk_twit = mk_twit;
	}

	public String getMk_insta() {
		return mk_insta;
	}

	public void setMk_insta(String mk_insta) {
		this.mk_insta = mk_insta;
	}

	public String getMk_url() {
		return mk_url;
	}

	public void setMk_url(String mk_url) {
		this.mk_url = mk_url;
	}

	public String getMk_email() {
		return mk_email;
	}

	public void setMk_email(String mk_email) {
		this.mk_email = mk_email;
	}

	public String getMk_tel() {
		return mk_tel;
	}

	public void setMk_tel(String mk_tel) {
		this.mk_tel = mk_tel;
	}
}
