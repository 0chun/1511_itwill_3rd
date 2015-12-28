package com.itwill.red.service.impl;

import com.itwill.red.dto.Product;

public class ProductInfo {
	private Product product;
	private int count;
	private int productTotalPrice;
	
	public int getProductTotalPrice() {
		return calculationTotalPrice();
	}

	public ProductInfo() {	}

	public ProductInfo(Product product, int count) {
		this.product = product;
		this.count = count;
	}

	public int calculationTotalPrice() {
		productTotalPrice = product.calculationPrice() * count;
		return productTotalPrice;
	}
	public void addCount() {
		count++;
	}
	
	public void addCount(int count) {
		this.count += count;
	}
	
	public boolean subCount() {
		count--;
		if(count < 1) {
			return false;
		}
		return true;
	}
	
	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}
}
