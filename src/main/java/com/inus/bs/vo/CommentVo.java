package com.inus.bs.vo;

import java.util.Date;

public class CommentVo {

	private int inus_commentNum; // 댓글 번호
	private int inus_boardNum; // 게시글 번호
	private String inus_CmContent; // 댓글 내용
	private String inus_CmWriter; // 댓글 작성자
	private Date inus_regDate; // 댓글 작성 시간
	
	
	@Override
	public String toString() {
		
		return "작성자 : " + inus_CmWriter +
				" 내용 : " + inus_CmContent +
				" 댓글번호 : " + inus_commentNum;
	}
	public int getInus_commentNum() {
		return inus_commentNum;
	}
	public void setInus_commentNum(int inus_commentNum) {
		this.inus_commentNum = inus_commentNum;
	}
	public int getInus_boardNum() {
		return inus_boardNum;
	}
	public void setInus_boardNum(int inus_boardNum) {
		this.inus_boardNum = inus_boardNum;
	}
	public String getInus_CmContent() {
		return inus_CmContent;
	}
	public void setInus_CmContent(String inus_CmContent) {
		this.inus_CmContent = inus_CmContent;
	}
	public String getInus_CmWriter() {
		return inus_CmWriter;
	}
	public void setInus_CmWriter(String inus_CmWriter) {
		this.inus_CmWriter = inus_CmWriter;
	}
	public Date getInus_regDate() {
		return inus_regDate;
	}
	public void setInus_regDate(Date inus_regDate) {
		this.inus_regDate = inus_regDate;
	}
}
