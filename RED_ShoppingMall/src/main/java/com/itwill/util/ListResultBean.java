package com.itwill.util;

import java.util.List;
import java.util.Map;

import com.itwill.red.dto.Reviews;

public class ListResultBean {

	private List<Map<String,String>> list;
	private int startPageNo; 		// 시작페이지번호
	private int endPageNo; 			// 끝페이지번호
	private int selectPageNo; 		// 선택페이지번호
	private int totalRecordCount; 	// 전체 행수
	private int totalPageCount; 	// 전체 페이지수
	private int previousGroupStartPageNo;// 이전그룹의 시작페이지번호
	private int nextGroupStartPageNo;// 다음그룹의 시작페이지번호
	private boolean showPrevious; 	//이전페이지 보이기 여부
	private boolean showNext; 		//다음페이지 보이기 여부
	private boolean showPreviousGroup;// 이전그룹 보이기 여부
	private boolean showNextGroup;  //다음그룹 보이기 여부
	private boolean showFirst; 		//처음으로 보이기 여부
	private boolean showLast; 		//마지막으로 보이기 여부

	// DB 성능 향상을 위한 변수
	private int startRowNum;
	private int endRowNum;
	
	public ListResultBean() {
		// TODO Auto-generated constructor stub
	}

	public ListResultBean(List<Map<String, String>> list, int startPageNo, int endPageNo, int selectPageNo,
			int totalRecordCount, int totalPageCount, int previousGroupStartPageNo, int nextGroupStartPageNo,
			boolean showPrevious, boolean showNext, boolean showPreviousGroup, boolean showNextGroup, boolean showFirst,
			boolean showLast, int startRowNum, int endRowNum) {
		super();
		this.list = list;
		this.startPageNo = startPageNo;
		this.endPageNo = endPageNo;
		this.selectPageNo = selectPageNo;
		this.totalRecordCount = totalRecordCount;
		this.totalPageCount = totalPageCount;
		this.previousGroupStartPageNo = previousGroupStartPageNo;
		this.nextGroupStartPageNo = nextGroupStartPageNo;
		this.showPrevious = showPrevious;
		this.showNext = showNext;
		this.showPreviousGroup = showPreviousGroup;
		this.showNextGroup = showNextGroup;
		this.showFirst = showFirst;
		this.showLast = showLast;
		this.startRowNum = startRowNum;
		this.endRowNum = endRowNum;
	}

	public List<Map<String, String>> getList() {
		return list;
	}

	public void setList(List<Map<String, String>> list) {
		this.list = list;
	}

	public int getStartPageNo() {
		return startPageNo;
	}

	public void setStartPageNo(int startPageNo) {
		this.startPageNo = startPageNo;
	}

	public int getEndPageNo() {
		return endPageNo;
	}

	public void setEndPageNo(int endPageNo) {
		this.endPageNo = endPageNo;
	}

	public int getSelectPageNo() {
		return selectPageNo;
	}

	public void setSelectPageNo(int selectPageNo) {
		this.selectPageNo = selectPageNo;
	}

	public int getTotalRecordCount() {
		return totalRecordCount;
	}

	public void setTotalRecordCount(int totalRecordCount) {
		this.totalRecordCount = totalRecordCount;
	}

	public int getTotalPageCount() {
		return totalPageCount;
	}

	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}

	public int getPreviousGroupStartPageNo() {
		return previousGroupStartPageNo;
	}

	public void setPreviousGroupStartPageNo(int previousGroupStartPageNo) {
		this.previousGroupStartPageNo = previousGroupStartPageNo;
	}

	public int getNextGroupStartPageNo() {
		return nextGroupStartPageNo;
	}

	public void setNextGroupStartPageNo(int nextGroupStartPageNo) {
		this.nextGroupStartPageNo = nextGroupStartPageNo;
	}

	public boolean isShowPrevious() {
		return showPrevious;
	}

	public void setShowPrevious(boolean showPrevious) {
		this.showPrevious = showPrevious;
	}

	public boolean isShowNext() {
		return showNext;
	}

	public void setShowNext(boolean showNext) {
		this.showNext = showNext;
	}

	public boolean isShowPreviousGroup() {
		return showPreviousGroup;
	}

	public void setShowPreviousGroup(boolean showPreviousGroup) {
		this.showPreviousGroup = showPreviousGroup;
	}

	public boolean isShowNextGroup() {
		return showNextGroup;
	}

	public void setShowNextGroup(boolean showNextGroup) {
		this.showNextGroup = showNextGroup;
	}

	public boolean isShowFirst() {
		return showFirst;
	}

	public void setShowFirst(boolean showFirst) {
		this.showFirst = showFirst;
	}

	public boolean isShowLast() {
		return showLast;
	}

	public void setShowLast(boolean showLast) {
		this.showLast = showLast;
	}

	public int getStartRowNum() {
		return startRowNum;
	}

	public void setStartRowNum(int startRowNum) {
		this.startRowNum = startRowNum;
	}

	public int getEndRowNum() {
		return endRowNum;
	}

	public void setEndRowNum(int endRowNum) {
		this.endRowNum = endRowNum;
	}

	
}
