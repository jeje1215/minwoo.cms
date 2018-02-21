package minwoo.cms.manad.domain;

import java.sql.Date;

public class Ad {
	private int adsId;
	private String adsCompany;
	private String adsMan;
	private String adsFile;
	private int adsMoney;
	private String adsUrl;
	private String adsStartDate;
	private String adsEndDate;
	private Date regDate;
	private String userId;
	
	public Ad() {}
	
	public Ad(String adsCompany2, String adsMan2, String fileName,
			int adsMoney2, String adsUrl2, String adsStartDate2,
			String adsEndDate2, String userId2) {
		this.adsCompany = adsCompany2;
		this.adsMan = adsMan2;
		this.adsFile = fileName;
		this.adsMoney = adsMoney2;
		this.adsUrl = adsUrl2;
		this.adsStartDate = adsStartDate2;
		this.adsEndDate = adsEndDate2;
		this.userId = userId2;
	}

	public int getAdsId() {
		return adsId;
	}

	public void setAdsId(int adsId) {
		this.adsId = adsId;
	}

	public String getAdsCompany() {
		return adsCompany;
	}

	public void setAdsCompany(String adsCompany) {
		this.adsCompany = adsCompany;
	}

	public String getAdsMan() {
		return adsMan;
	}

	public void setAdsMan(String adsMan) {
		this.adsMan = adsMan;
	}

	public String getAdsFile() {
		return adsFile;
	}

	public void setAdsFile(String adsFile) {
		this.adsFile = adsFile;
	}

	public int getAdsMoney() {
		return adsMoney;
	}

	public void setAdsMoney(int adsMoney) {
		this.adsMoney = adsMoney;
	}

	public String getAdsUrl() {
		return adsUrl;
	}

	public void setAdsUrl(String adsUrl) {
		this.adsUrl = adsUrl;
	}

	public String getAdsStartDate() {
		return adsStartDate;
	}

	public void setAdsStartDate(String adsStartDate) {
		this.adsStartDate = adsStartDate;
	}

	public String getAdsEndDate() {
		return adsEndDate;
	}

	public void setAdsEndDate(String adsEndDate) {
		this.adsEndDate = adsEndDate;
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
