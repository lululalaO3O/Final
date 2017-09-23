package com.jhta.app.vo;

public class PaymentVo {
	private int pay_num;
	private int cart_num;
	private int card_valdate;
	private int card_secnum;
	private int id_num;
	private int pay_status;
	
	public PaymentVo() {

	}

	public PaymentVo(int pay_num, int cart_num, int card_valdate, int card_secnum, int id_num, int pay_status) {
		super();
		this.pay_num = pay_num;
		this.cart_num = cart_num;
		this.card_valdate = card_valdate;
		this.card_secnum = card_secnum;
		this.id_num = id_num;
		this.pay_status = pay_status;
	}

	public int getPay_num() {
		return pay_num;
	}

	public void setPay_num(int pay_num) {
		this.pay_num = pay_num;
	}

	public int getCart_num() {
		return cart_num;
	}

	public void setCart_num(int cart_num) {
		this.cart_num = cart_num;
	}

	public int getCard_valdate() {
		return card_valdate;
	}

	public void setCard_valdate(int card_valdate) {
		this.card_valdate = card_valdate;
	}

	public int getCard_secnum() {
		return card_secnum;
	}

	public void setCard_secnum(int card_secnum) {
		this.card_secnum = card_secnum;
	}

	public int getId_num() {
		return id_num;
	}

	public void setId_num(int id_num) {
		this.id_num = id_num;
	}

	public int getPay_status() {
		return pay_status;
	}

	public void setPay_status(int pay_status) {
		this.pay_status = pay_status;
	}
	
}
