package com.inus.bs.vo;

import java.util.Date;

public class BoardVo {

	private int inus_boardNum;  // 게시물 번호
	private String inus_userName; // 닉네임
	private String inus_subject; // 제목
	private String inus_content; // 내용
	private Date inus_Date; // 날짜 및 시간
	private int boardCount; //조회수
	
	
	public int getBoardCount() {
		return boardCount;
	}
	public void setBoardCount(int boardCount) {
		this.boardCount = boardCount;
	}
	public int getInus_boardNum() {
		return inus_boardNum;
	}
	public void setInus_boardNum(int inus_boardNum) {
		this.inus_boardNum = inus_boardNum;
	}
	public String getInus_userName() {
		return inus_userName;
	}
	public void setInus_userName(String inus_userName) {
		this.inus_userName = inus_userName;
	}
	public String getInus_subject() {
		return inus_subject;
	}
	public void setInus_subject(String inus_subject) {
		this.inus_subject = inus_subject;
	}
	public String getInus_content() {
		return inus_content;
	}
	public void setInus_content(String inus_content) {
		this.inus_content = inus_content;
	}
	public Date getInus_Date() {
		return inus_Date;
	}
	public void setInus_Date(Date inus_Date) {
		this.inus_Date = inus_Date;
	}
	
	
}
