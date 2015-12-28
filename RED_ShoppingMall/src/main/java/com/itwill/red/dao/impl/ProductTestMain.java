package com.itwill.red.dao.impl;

public class ProductTestMain {

	public static void main(String[] args) throws Exception {
		ProductDaoImpl serviceImpl = new ProductDaoImpl();
		System.out.println(serviceImpl.selectAll());
		/*
		System.out.println(serviceImpl.selectByProductNo(1));
		System.out.println(serviceImpl.selectByProductName("아만다아일렛T"));
		System.out.println(serviceImpl.selectByProductPrice(27000, 30000));
		*/
		System.out.println(serviceImpl.selectByCompany("비비드앤코"));
	}

}
