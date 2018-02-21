package minwoo.cms.messages.domain;

import java.sql.Date;

public class Msg {
	private int mesId; 
	private String mesContent;
	private Date mesWriteDate;
	private String mesGetId;
	private String userId;
	
	public int getMesId() {
		return mesId;
	}
	public void setMesId(int mesId) {
		this.mesId = mesId;
	}
	public String getMesContent() {
		return mesContent;
	}
	public void setMesContent(String mesContent) {
		this.mesContent = mesContent;
	}
	public Date getMesWriteDate() {
		return mesWriteDate;
	}
	public void setMesWriteDate(Date mesWriteDate) {
		this.mesWriteDate = mesWriteDate;
	}
	public String getMesGetId() {
		return mesGetId;
	}
	public void setMesGetId(String mesGetId) {
		this.mesGetId = mesGetId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}

}
