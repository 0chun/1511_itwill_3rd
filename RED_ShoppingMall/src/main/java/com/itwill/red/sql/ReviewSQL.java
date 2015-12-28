package com.itwill.red.sql;

public class ReviewSQL {
	public final static String 
	CREATE="insert into reviews (r_no, r_p_no, r_price, r_design, r_quality, r_nickname, r_summary, r_review)"
			+ "values(r_no_seq.nextval, ?, ?, ?, ?, ?, ?, ?)";
	public final static String 
	SELECT_BY_RNO="SELECT * FROM REVIEWS WHERE r_no = ?";
	public final static String 
	SELECT_BY_PNO="select * from reviews where r_p_no=?";
	public final static String 
	SELECT_BY_NICK="select * from reviews where r_nickname=?";
	public final static String 
	FIND_REVIEW_LIST="select * from reviews";
	public final static String 
	UPDATE ="update reviews set r_price=?, r_design=?, r_quality=?, r_nickname=? , r_summary=?, r_review=? where r_no=? ";
	public final static String 
	DELETE = "delete from reviews where r_no=?";
	public final static String 
	REVIEW_COUNT = "SELECT COUNT(*) FROM reviews";
	public final static String 
	REVIEW_P_NO_COUNT = "SELECT COUNT(*) FROM reviews where r_p_no=?";
	
}
