package com.jhta.app.vo;

import java.util.Date;

public class ProNewsVo {
	private int news_num;
	private int pro_num;
	private String news_title;
	private String news_content;
	private Date news_regdate;
	
	public ProNewsVo() {
		
	}

	public ProNewsVo(int news_num, int pro_num, String news_title, String news_content, Date news_regdate) {
		super();
		this.news_num = news_num;
		this.pro_num = pro_num;
		this.news_title = news_title;
		this.news_content = news_content;
		this.news_regdate = news_regdate;
	}

	public int getNews_num() {
		return news_num;
	}

	public void setNews_num(int news_num) {
		this.news_num = news_num;
	}

	public int getPro_num() {
		return pro_num;
	}

	public void setPro_num(int pro_num) {
		this.pro_num = pro_num;
	}

	public String getNews_title() {
		return news_title;
	}

	public void setNews_title(String news_title) {
		this.news_title = news_title;
	}

	public String getNews_content() {
		return news_content;
	}

	public void setNews_content(String news_content) {
		this.news_content = news_content;
	}

	public Date getNews_regdate() {
		return news_regdate;
	}

	public void setNews_regdate(Date news_regdate) {
		this.news_regdate = news_regdate;
	}
	
}
