/* PRODUCT */

DROP SEQUENCE PRODUCT_NO_SEQ;
DROP TABLE PRODUCT CASCADE CONSTRAINTS; 

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

CREATE SEQUENCE P_NO_SEQ INCREMENT BY 1 START WITH 1;

COMMIT;