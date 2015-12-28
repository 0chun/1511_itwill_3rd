/* ORDERS */

DROP SEQUENCE ORDERS_NO_SEQ;
DROP TABLE ORDERS CASCADE CONSTRAINTS; 


CREATE TABLE ORDERS (
	o_no NUMBER(10) NOT NULL PRIMARY KEY, /* 주문번호 */
	o_m_id VARCHAR2(20) REFERENCES MEMBER(m_id), /* 회원아이디 */
	o_date DATE, /* 주문날짜 */
	o_total NUMBER(10), /* 총액 */
	o_dcharge NUMBER(5), /* 배송비 */
	o_zipcode VARCHAR2(40), /* 우편번호 */
	o_address VARCHAR2(286), /* 상세주소 */
	o_phone VARCHAR2(30) /* 전화번호 */
);

CREATE SEQUENCE O_NO_SEQ INCREMENT BY 1 START WITH 1;

COMMIT;