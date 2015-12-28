/* MEMBER */
DROP TABLE MEMBER CASCADE CONSTRAINTS; 

CREATE TABLE MEMBER (
	m_id VARCHAR2(20) NOT NULL PRIMARY KEY, /* 회원아이디 */
	m_password VARCHAR2(20), /* 회원비밀번호 */
	m_name VARCHAR2(20), /* 회원이름 */
	m_sex VARCHAR2(10), /* 회원성별 */
	m_phone VARCHAR2(30), /* 전화번호 */
	m_zipcode VARCHAR2(40), /* 우편번호 */
	m_address VARCHAR2(286), /* 상세주소 */
	m_email VARCHAR2(50) /* 회원이메일 */
);
alter table MEMBER modify(m_zipcode varchar2(80));

COMMIT;