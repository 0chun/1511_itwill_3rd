-- INSERT TABLE --

/* MEMBER */
INSERT INTO MEMBER(m_id, m_password, m_name, m_sex, m_phone, m_zipcode, m_address, m_email) 
		    VALUES('itwill', '1111', '이동국', '남', '031-743-6617', '', '', 'itwll@gmail.com');       
			

/* PRODUCT */
INSERT INTO PRODUCT(p_no, p_name, p_price, p_indate, p_sell, p_score, p_discount, p_size, p_color, p_ccode, p_image, p_company ,p_detail) 
		    VALUES(p_no_seq.NEXTVAL, 'top01', 98000, to_date('2015/09/09 ','YYYY/MM/DD'), 2354, 4, 10, 'L', 'black', '123', '/image/top01', 'nike', '블라블라블라');


/* ORDERS */
INSERT INTO ORDERS(o_no, o_m_id, o_date, o_total, o_dcharge, o_zipcode, o_address, o_phone)
			VALUES(o_no_seq.NEXTVAL, 'itwill', sysdate, 145000, 0, '', '', '031-743-6617');
			
			INSERT INTO ORDERS(o_no, o_m_id, o_date, o_total, o_dcharge, o_zipcode, o_address, o_phone)
			VALUES(o_no_seq.NEXTVAL, 'test1', sysdate, 145000, 0, '', '', '031-743-6617');




/* ORDERS_DETAIL */
INSERT INTO ORDERS_DETAIL(od_no, od_o_no, od_p_no, od_amount, od_price)
			VALUES(od_no_seq.NEXTVAL, 1, 1, 2, 130000);




/* WISHLIST */
INSERT INTO WISHLIST(w_no, w_m_id)
			VALUES(w_no_seq.NEXTVAL, 'itwill');



/* WISHLIST_DETAIL */			
INSERT INTO WISHLIST_DETAIL(wd_no, wd_w_no, wd_p_no, wd_amount, wd_price)
			VALUES(wd_no_seq.NEXTVAL, 1, 1, 2, 34000);




/* REVIEWS */			
INSERT INTO REVIEWS(r_no, r_p_no, r_price, r_design, r_quality, r_nickname, r_summary, r_review)
			VALUES(r_no_seq.NEXTVAL, 1, 4, 3, 5, 'itman', '내용요약 summary', '리뷰리뷰리뷰리뷰리뷰');
