package com.jhta.app.vo;

public class InquiryVo {
	private int inq_num;
	private int inq_cat_num;
	private int admin_num;
	private int mem_num;
	private String inq_content;
	private int inq_check;
	private int inq_handling;
	private String req_attachment;

	public InquiryVo() {
	}

	public InquiryVo(int inq_num, int inq_cat_num, int admin_num, int mem_num, String inq_content, int inq_check, int inq_handling, String req_attachment) {
		this.inq_num = inq_num;
		this.inq_cat_num = inq_cat_num;
		this.admin_num = admin_num;
		this.mem_num = mem_num;
		this.inq_content = inq_content;
		this.inq_check = inq_check;
		this.inq_handling = inq_handling;
		this.req_attachment = req_attachment;
	}

	public int getInq_num() {
		return inq_num;
	}

	public void setInq_num(int inq_num) {
		this.inq_num = inq_num;
	}

	public int getInq_cat_num() {
		return inq_cat_num;
	}

	public void setInq_cat_num(int inq_cat_num) {
		this.inq_cat_num = inq_cat_num;
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

	public String getInq_content() {
		return inq_content;
	}

	public void setInq_content(String inq_content) {
		this.inq_content = inq_content;
	}

	public int getInq_check() {
		return inq_check;
	}

	public void setInq_check(int inq_check) {
		this.inq_check = inq_check;
	}

	public int getInq_handling() {
		return inq_handling;
	}

	public void setInq_handling(int inq_handling) {
		this.inq_handling = inq_handling;
	}

	public String getReq_attachment() {
		return req_attachment;
	}

	public void setReq_attachment(String req_attachment) {
		this.req_attachment = req_attachment;
	}
}
