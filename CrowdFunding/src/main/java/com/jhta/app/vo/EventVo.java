package com.jhta.app.vo;

import java.sql.Date;

public class EventVo {
	private int evt_num;
	private int admin_num;
	private int mem_num;
	private String evt_title;
	private String evt_content;
	private Date evt_regdate;

	public EventVo() {
	}

	public EventVo(int evt_num, int admin_num, int mem_num, String evt_title, String evt_content, Date evt_regdate) {
		this.evt_num = evt_num;
		this.admin_num = admin_num;
		this.mem_num = mem_num;
		this.evt_title = evt_title;
		this.evt_content = evt_content;
		this.evt_regdate = evt_regdate;
	}

	public int getEvt_num() {
		return evt_num;
	}

	public void setEvt_num(int evt_num) {
		this.evt_num = evt_num;
	}

	public int getAdmin_num() {
		return admin_num;
	}

	public void setAdmin_num(int admin_num) {
		this.admin_num = admin_num;
	}

	public int getMem_num() {
		return mem_num;
	}

	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}

	public String getEvt_title() {
		return evt_title;
	}

	public void setEvt_title(String evt_title) {
		this.evt_title = evt_title;
	}

	public String getEvt_content() {
		return evt_content;
	}

	public void setEvt_content(String evt_content) {
		this.evt_content = evt_content;
	}

	public Date getEvt_regdate() {
		return evt_regdate;
	}

	public void setEvt_regdate(Date evt_regdate) {
		this.evt_regdate = evt_regdate;
	}
}
