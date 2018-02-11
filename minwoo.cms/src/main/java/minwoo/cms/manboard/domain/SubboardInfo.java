package minwoo.cms.manboard.domain;

public class SubboardInfo {
	private int subId; 
	private String subNm;
	private String subYn;
	private int mabId;
	private String boardType;
	private String userId;

	public String getUser_id() {
		return userId;
	}

	public void setUser_id(String userId) {
		this.userId = userId;
	}

	public int getSubId() {
		return subId;
	}

	public void setSubId(int subId) {
		this.subId = subId;
	}

	public String getSubNm() {
		return subNm;
	}

	public void setSubNm(String subNm) {
		this.subNm = subNm;
	}

	public String getSubYn() {
		return subYn;
	}

	public void setSubYn(String subYn) {
		this.subYn = subYn;
	}

	public int getMabId() {
		return mabId;
	}

	public void setMabId(int mabId) {
		this.mabId = mabId;
	}

	public String getBoardType() {
		return boardType;
	}

	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}

}
