package minwoo.cms.user.manuser.domain;

public class ManUser {
	public String userId; // 아이디
	public String userNic; // 닉네임
	public String userNm; // 이름
	public String userMail; // 이메일
	public String userLevel; // 등급
	

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
	
	public String getUserLevel(){
		return userLevel;
	}
	
	public void setUserLevel(String userLevel){
		this.userLevel=userLevel;
	}
}
