package minwoo.cms.user.manuser.domain;

import java.util.List;

public class ManUser {
	public String userId; // 아이디
	public String userNic; // 닉네임
	public String userNm; // 이름
	public String userMail; // 이메일
	public String userLevel; // 등급
	public String checkVal; // 체크박스 중 체크된 값
	public String ulevel; // select박스 회원등급
	public List<String> tmpCheckVal; // 임시값 (테스트중)
	
	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getRowCnt() {
		return rowCnt;
	}

	public void setRowCnt(int rowCnt) {
		this.rowCnt = rowCnt;
	}

	public int currentPage;
	public int rowCnt;

	public List<String> getTmpCheckVal() {
		return tmpCheckVal;
	}

	public void setTmpCheckVal(List<String> tmpCheckVal) {
		this.tmpCheckVal = tmpCheckVal;
	}

	public String getUlevel() {
		return ulevel;
	}

	public void setUlevel(String ulevel) {
		this.ulevel = ulevel;
	}

	public String getCheckVal() {
		return checkVal;
	}

	public void setCheckVal(String checkVal) {
		this.checkVal = checkVal;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserNm() {
		return userNm;
	}

	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}

	public String getUserMail() {
		return userMail;
	}

	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}

	public String getUserNic() {
		return userNic;
	}

	public void setUserNic(String userNic) {
		this.userNic = userNic;
	}

	public String getUserLevel() {
		return userLevel;
	}

	public void setUserLevel(String userLevel) {
		this.userLevel = userLevel;
	}
}
