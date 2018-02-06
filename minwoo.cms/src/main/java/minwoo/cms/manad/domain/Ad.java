package minwoo.cms.manad.domain;

import java.sql.Date;

public class Ad {
	private int adNo; //광고번호
	private String adName; //광고이름
	private Date startDate; //광고 시작일
	private Date finshDate; //광고 종료일
	private int adPrice; //광고 금액
	private String userName; //광고관리자이름
	
	public int getAdNo() {
		return adNo;
	}
	public void setAdNo(int adNo) {
		this.adNo = adNo;
	}
	public String getAdName() {
		return adName;
	}
	public void setAdName(String adName) {
		this.adName = adName;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getFinshDate() {
		return finshDate;
	}
	public void setFinshDate(Date finshDate) {
		this.finshDate = finshDate;
	}
	public int getAdPrice() {
		return adPrice;
	}
	public void setAdPrice(int adPrice) {
		this.adPrice = adPrice;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	

}
