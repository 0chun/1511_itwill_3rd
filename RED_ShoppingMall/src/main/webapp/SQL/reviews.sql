/* REVIEWS */

DROP SEQUENCE REVIEWS_NO_SEQ;
DROP TABLE REVIEWS CASCADE CONSTRAINTS; 


CREATE TABLE REVIEWS (
	r_no NUMBER(10) NOT NULL PRIMARY KEY, /* 리뷰번호 */
	r_p_no NUMBER(10) REFERENCES PRODUCT(p_no),  /* 상품번호 */
	r_price NUMBER(5), /* 가격점수 */
	r_design NUMBER(5), /* 디자인점수 */
	r_quality NUMBER(5), /* 품질점수 */
	r_nickname VARCHAR2(20), /* 닉네임 */
	r_summary VARCHAR2(140), /* 요약 */
	r_review VARCHAR2(500) /* 내용 */
);

CREATE SEQUENCE R_NO_SEQ INCREMENT BY 1 START WITH 1;

COMMIT;