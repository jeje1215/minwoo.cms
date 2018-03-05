package minwoo.cms.comments.domain;

import java.util.Date;

public class Comments {
	private int comId; //댓글고유값
	private String comContent; //댓글 내용
	private Date regDate; //댓글 작성일
	private String userId; // 댓글작성 아이디
	
	public int getComId() {
		return comId;
	}
	public void setComId(int comId) {
		this.comId = comId;
	}
	public String getComContent() {
		return comContent;
	}
	public void setComContent(String comContent) {
		this.comContent = comContent;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}

}
