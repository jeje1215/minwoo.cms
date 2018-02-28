package minwoo.cms.user.manmes.domain;

import java.sql.Date;
import java.util.List;

public class Mes {
	private int mesId; //고유값
	private String mesContent; //메세지 내용
	private Date mesWriteDate;  //보낸 날짜	
	private String mesGetId; //메세지 받는 사람 id
	private String userMail;  //회원 이메일
	private String userNm; //이름
	private String userNic; //닉네임 
	public String checked; // 체크박스 중 체크된 값
	public List<String> tmpChecked; // 임시값 (테스트중)
	
	public Date getMesWriteDate() {
		return mesWriteDate;
	}
	public void setMesWriteDate(Date mesWriteDate) {
		this.mesWriteDate = mesWriteDate;
	}
	
	public List<String> getTmpChecked() {
		return tmpChecked;
	}
	public void setTmpChecked(List<String> tmpChecked) {
		this.tmpChecked = tmpChecked;
	}
	public String getChecked() {
		return checked;
	}
	public void setChecked(String checked) {
		this.checked = checked;
	}
	private String userId;	

	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
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
