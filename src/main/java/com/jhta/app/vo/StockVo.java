package com.jhta.app.vo;

public class StockVo {
	private int stock_num;
	private int inv_type_num;
	private int stock_asset;
	private int stock_now;
	private int stock_stake;
	
	public StockVo() {
		
	}

	public StockVo(int stock_num, int inv_type_num, int stock_asset, int stock_now, int stock_stake) {
		super();
		this.stock_num = stock_num;
		this.inv_type_num = inv_type_num;
		this.stock_asset = stock_asset;
		this.stock_now = stock_now;
		this.stock_stake = stock_stake;
	}

	public int getStock_num() {
		return stock_num;
	}

	public void setStock_num(int stock_num) {
		this.stock_num = stock_num;
	}

	public int getInv_type_num() {
		return inv_type_num;
	}

	public void setInv_type_num(int inv_type_num) {
		this.inv_type_num = inv_type_num;
	}

	public int getStock_asset() {
		return stock_asset;
	}

	public void setStock_asset(int stock_asset) {
		this.stock_asset = stock_asset;
	}

	public int getStock_now() {
		return stock_now;
	}

	public void setStock_now(int stock_now) {
		this.stock_now = stock_now;
	}

	public int getStock_stake() {
		return stock_stake;
	}

	public void setStock_stake(int stock_stake) {
		this.stock_stake = stock_stake;
	}
}
