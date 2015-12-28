package com.itwill.red.service.impl;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;

import com.itwill.red.dto.Product;

public class MyCartInfo {
	private int totalPrice;
	private int totalCount;
	
	private HashMap<String, ProductInfo> myCartHashMap;
	
	public MyCartInfo() {
		myCartHashMap = new HashMap<String, ProductInfo>();
	}
	
	public int getTotalPrice() {
		return totalPrice;
	}
	
	public int getTotalCount() {
		return totalCount;
	}
	
	public HashMap<String, ProductInfo> getMyCartHashMap() {
		return myCartHashMap;
	}
	
	public String addProduct(Product product, int count) {
		String mapKey = product.getP_name() + "_" + product.getP_color() + "_" + product.getP_size();
		if(myCartHashMap.containsKey(mapKey)) {	// 같은 상품이 있는 경우
			ProductInfo tempProductInfo = myCartHashMap.get(mapKey);
			tempProductInfo.addCount(count);
			myCartHashMap.put(mapKey, tempProductInfo);
		} else {	// 같은 상품이 없는 경우
			myCartHashMap.put(mapKey, new ProductInfo(product, count));
		}
		calculationPrice();
		calculationCount();
		return mapKey;
	}
	
	public void removeProduct(String p_name) {
		if(myCartHashMap.containsKey(p_name)) {	// 같은 상품이 있는 경우
			myCartHashMap.remove(p_name);
			calculationPrice();
			calculationCount();
		}
	}
	
	public void calculationPrice() {
		Iterator<Entry<String, ProductInfo>> iter = myCartHashMap.entrySet().iterator();
		totalPrice = 0;
		while(iter.hasNext()) {
			Entry<String, ProductInfo> entry = iter.next();
			totalPrice += entry.getValue().calculationTotalPrice();
		}
	}
	
	public void calculationCount() {
		Iterator<Entry<String, ProductInfo>> iter = myCartHashMap.entrySet().iterator();
		totalCount = 0;
		while(iter.hasNext()) {
			Entry<String, ProductInfo> entry = iter.next();
			totalCount += entry.getValue().getCount();
		}
	}
}
