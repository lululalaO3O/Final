package com.jhta.app.vo;

import java.sql.Date;

public class MailingVo {
	private int mail_num;
	private String mail_from;
	private String mail_to;
	private String mail_title;
	private String mail_content;
	private Date mail_date;

	public MailingVo() {
	}

	public MailingVo(int mail_num, String mail_from, String mail_to, String mail_title, String mail_content, Date mail_date) {
		this.mail_num = mail_num;
		this.mail_from = mail_from;
		this.mail_to = mail_to;
		this.mail_title = mail_title;
		this.mail_content = mail_content;
		this.mail_date = mail_date;
	}

	public int getMail_num() {
		return mail_num;
	}

	public void setMail_num(int mail_num) {
		this.mail_num = mail_num;
	}

	public String getMail_from() {
		return mail_from;
	}

	public void setMail_from(String mail_from) {
		this.mail_from = mail_from;
	}

	public String getMail_to() {
		return mail_to;
	}

	public void setMail_to(String mail_to) {
		this.mail_to = mail_to;
	}

	public String getMail_title() {
		return mail_title;
	}

	public void setMail_title(String mail_title) {
		this.mail_title = mail_title;
	}

	public String getMail_content() {
		return mail_content;
	}

	public void setMail_content(String mail_content) {
		this.mail_content = mail_content;
	}

	public Date getMail_date() {
		return mail_date;
	}

	public void setMail_date(Date mail_date) {
		this.mail_date = mail_date;
	}
}
