-- CREATE TABLE --

/* MEMBER */
CREATE TABLE MEMBER (
	m_id VARCHAR2(20) NOT NULL PRIMARY KEY, /* 회원아이디 */
	m_password VARCHAR2(20), /* 회원비밀번호 */
	m_name VARCHAR2(20), /* 회원이름 */
	m_sex VARCHAR2(10), /* 회원성별 */
	m_phone VARCHAR2(30), /* 전화번호 */
	m_zipcode VARCHAR2(40), /* 우편번호 */
	m_address VARCHAR2(286), /* 상세주소 */
	m_email VARCHAR2(50), /* 회원이메일 */
	m_zipcode VARCHAR2(40)
);

/* PRODUCT */
CREATE TABLE PRODUCT (
	p_no NUMBER(10) NOT NULL PRIMARY KEY, /* 상품번호 */
	p_name VARCHAR2(50), /* 상품이름 */
	p_price NUMBER(10), /* 상품가격 */
	p_indate DATE, /* 입고일 */
	p_sell NUMBER(20), /* 상품판매량 */
	p_score NUMBER(5), /* 평점 */
	p_discount NUMBER(2), /* 할인률 */
	p_size VARCHAR2(2), /* 사이즈 */
	p_color VARCHAR2(10), /* 색상 */
	p_ccode NUMBER(5), /* 상품분류코드 */
	p_image VARCHAR2(50), /* 상품이미지 */
	p_company VARCHAR2(50), /* 제조회사 */
	p_detail VARCHAR2(3000) /* 상품설명 */
	
);


/* ORDERS */
CREATE TABLE ORDERS (
	o_no NUMBER(10) NOT NULL PRIMARY KEY, /* 주문번호 */
	o_m_id VARCHAR2(20) REFERENCES MEMBER(m_id), /* 회원아이디 */
	o_date DATE, /* 주문날짜 */
	o_total NUMBER(10), /* 총액 */
	o_dcharge NUMBER(5), /* 배송비 */
	o_zipcode VARCHAR2(40), /* 우편번호 */
	o_address VARCHAR2(286), /* 상세주소 */
	o_phone VARCHAR2(30), /* 전화번호 */
	o_status VARCHAR2(30),
	o_name VARCHAR2(20)
);


/* ORDERS_DETAIL */
CREATE TABLE ORDERS_DETAIL (
	od_no NUMBER(10) NOT NULL PRIMARY KEY, /* 주문상세번호 */
	od_o_no NUMBER(10) REFERENCES ORDERS(o_no), /* 주문번호 */
	od_p_no NUMBER(10), /* 상품번호 */
	od_amount NUMBER(10), /* 상품수량 */
	od_price NUMBER(10), /* 상품금액 */
	od_option varchar2(40)
);


/* WISHLIST */
CREATE TABLE WISHLIST (
	w_no NUMBER(10) NOT NULL PRIMARY KEY, /* 위시리스트번호 */
	w_m_id VARCHAR2(20) REFERENCES MEMBER(m_id)/* 회원아이디 */
);


/* WISHLIST_DETAIL */
CREATE TABLE WISHLIST_DETAIL (
	wd_no NUMBER(10) NOT NULL PRIMARY KEY, /* 위시리스트상세번호 */
	wd_w_no NUMBER(10) REFERENCES WISHLIST(w_no), /* 위시리스트번호 */
	wd_p_no NUMBER(10) REFERENCES PRODUCT(p_no), /* 상품번호 */
	wd_amount NUMBER(10), /* 상품수량 */
	wd_price NUMBER(10) /* 상품금액 */
);


/* REVIEWS */
CREATE TABLE REVIEWS (
	r_no NUMBER(10) NOT NULL PRIMARY KEY, /* 리뷰번호 */
	r_p_no NUMBER(10) REFERENCES PRODUCT(p_no),  /* 상품번호 */
	r_price NUMBER(5), /* 가격점수 */
	r_design NUMBER(5), /* 디자인점수 */
	r_quality NUMBER(5), /* 품질점수 */
	r_nickname VARCHAR2(20), /* 닉네임 */
	r_summary VARCHAR2(140), /* 요약 */
	r_review VARCHAR2(500), /* 내용 */
	r_m_id varchar2(20)
);


-- CREATE SEQUENCE --
CREATE SEQUENCE P_NO_SEQ INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE O_NO_SEQ INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE OD_NO_SEQ INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE W_NO_SEQ INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE WD_NO_SEQ INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE R_NO_SEQ INCREMENT BY 1 START WITH 1;

COMMIT;