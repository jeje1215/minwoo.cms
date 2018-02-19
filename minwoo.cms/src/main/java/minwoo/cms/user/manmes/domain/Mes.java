package minwoo.cms.user.manmes.domain;

import java.sql.Date;

public class Mes {
	private int mesId; //고유값
	private String mesContent; //메세지 내용
	private Date sysDate; 
	private String mesGetId; //메세지 받는 사람 id
	private String userMail;  //회원 이메일
	private String userNm; //이름
	private String userNic; //닉네임 
	
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
	public Date getSysDate() {
		return sysDate;
	}
	public void setSysDate(Date sysDate) {
		this.sysDate = sysDate;
	}
	public String getMesGetId() {
		return mesGetId;
	}
	public void setMesGetId(String mesGetId) {
		this.mesGetId = mesGetId;
	}
	public String getUserMail() {
		return userMail;
	}
	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}
	public String getUserNm() {
		return userNm;
	}
	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}
	public String getUserNic() {
		return userNic;
	}
	public void setUserNic(String userNic) {
		this.userNic = userNic;
	}
	

	
	

}
