package minwoo.cms.user.userupdate.domain;

public class User {
   public String userId; // 아이디
   public String userPwd; // 비밀번호
   public String userNm; // 이름
   public String userMail; // 메일
   public String userBirth;// 생년월일
   public String userNic; // 닉네임
   
   public String getUserId() {
      return userId;
   }
   public String getUserPwd() {
      return userPwd;
   }
   public String getUserNm() {
      return userNm;
   }
   public String getUserMail() {
      return userMail;
   }
   public String getUserBirth() {
      return userBirth;
   }
   public String getUserNic() {
      return userNic;
   }
   public void setUserId(String userId) {
      this.userId = userId;
   }
   public void setUserPwd(String userPwd) {
      this.userPwd = userPwd;
   }
   public void setUserNm(String userNm) {
      this.userNm = userNm;
   }
   public void setUserMail(String userMail) {
      this.userMail = userMail;
   }
   public void setUserBirth(String userBirth) {
      this.userBirth = userBirth;
   }
   public void setUserNic(String userNic) {
      this.userNic = userNic;
   }
}