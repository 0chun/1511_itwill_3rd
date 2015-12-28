package com.itwill.red.dto;

public class Zip {
	public String zipcode; // 우편번호
	public String sido; // 시도
	public String gugun; // 구군
	public String dong; // 동
	public String bldg; // 추가주소
	public String bunji; // 번지

	public Zip() {
		// TODO Auto-generated constructor stub
	}

	public Zip(String zipcode, String sido, String gugun, String dong, String bldg, String bunji) {
		super();
		this.zipcode = zipcode;
		this.sido = sido;
		this.gugun = gugun;
		this.dong = dong;
		this.bldg = bldg;
		this.bunji = bunji;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getSido() {
		return sido;
	}

	public void setSido(String sido) {
		this.sido = sido;
	}

	public String getGugun() {
		return gugun;
	}

	public void setGugun(String gugun) {
		this.gugun = gugun;
	}

	public String getDong() {
		return dong;
	}

	public void setDong(String dong) {
		this.dong = dong;
	}

	public String getBldg() {
		return bldg;
	}

	public void setBldg(String bldg) {
		this.bldg = bldg;
	}

	public String getBunji() {
		return bunji;
	}

	public void setBunji(String bunji) {
		this.bunji = bunji;
	}

	@Override
	public String toString() {
		return "Zip [zipcode=" + zipcode + ", sido=" + sido + ", gugun=" + gugun + ", dong=" + dong + ", bldg" + bldg
				+ ", bunji=" + bunji + "]";
	}
}
