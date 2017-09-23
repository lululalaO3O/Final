package com.jhta.app.vo;

public class ProEvaluationVo {
	private int eva_num;
	private int pro_num;
	private int admin_num;
	private int eva_check;
	private int eva_status;

	public ProEvaluationVo() {
	}

	public ProEvaluationVo(int eva_num, int pro_num, int admin_num, int eva_check, int eva_status) {
		this.eva_num = eva_num;
		this.pro_num = pro_num;
		this.admin_num = admin_num;
		this.eva_check = eva_check;
		this.eva_status = eva_status;
	}

	public int getEva_num() {
		return eva_num;
	}

	public void setEva_num(int eva_num) {
		this.eva_num = eva_num;
	}

	public int getPro_num() {
		return pro_num;
	}

	public void setPro_num(int pro_num) {
		this.pro_num = pro_num;
	}

	public int getAdmin_num() {
		return admin_num;
	}

	public void setAdmin_num(int admin_num) {
		this.admin_num = admin_num;
	}

	public int getEva_check() {
		return eva_check;
	}

	public void setEva_check(int eva_check) {
		this.eva_check = eva_check;
	}

	public int getEva_status() {
		return eva_status;
	}

	public void setEva_status(int eva_status) {
		this.eva_status = eva_status;
	}
}
