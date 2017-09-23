package com.jhta.app.vo;

public class LikeProjectVo {
	private int like_num;
	private int mem_num;
	private int pro_num;

	public LikeProjectVo() {
	}

	public LikeProjectVo(int like_num, int mem_num, int pro_num) {
		this.like_num = like_num;
		this.mem_num = mem_num;
		this.pro_num = pro_num;
	}

	public int getLike_num() {
		return like_num;
	}

	public void setLike_num(int like_num) {
		this.like_num = like_num;
	}

	public int getMem_num() {
		return mem_num;
	}

	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}

	public int getPro_num() {
		return pro_num;
	}

	public void setPro_num(int pro_num) {
		this.pro_num = pro_num;
	}
}
