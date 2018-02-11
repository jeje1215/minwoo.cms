package minwoo.cms.manboard.domain;

public class ManboardInfo {
	//메인 보드
	private int mabId;
	private String mabNm;
	private String mabYn;
	private String userId;
	
	
	public String getUser_id() {
		return userId;
	}

	public void setUser_id(String userId) {
		this.userId = userId;
	}

	public int getMabId() {
		return mabId;
	}

	public void setMabId(int mabId) {
		this.mabId = mabId;
	}

	public String getMabNm() {
		return mabNm;
	}

	public void setMabNm(String mabNm) {
		this.mabNm = mabNm;
	}

	public String getMabYn() {
		return mabYn;
	}

	public void setMabYn(String mabYn) {
		this.mabYn = mabYn;
	}

}
