
-- SELECT --

/* 카테고리 별 상품 목록 */
SELECT * FROM PRODUCT WHERE P_CCODE = ?;


/* 개인 별 ORDERS 목록 (날짜 내림차순) */
SELECT * FROM ORDERS WHERE O_M_ID = ? ORDER BY O_DATE DESC;

/* 상품 별 리뷰 목록 */