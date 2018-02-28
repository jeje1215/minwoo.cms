package minwoo.cms.board.domain;

import java.sql.Date;

public class BoardVo {
   private int usbId; // 게시글 번호
   private String usbTitle; // 게시글 제목
   private String usbContent; // 게시글 내용
   private String userId; // 게시글 작성자
   private Date regDate; // 게시글 작성일자
   private int usbCnt; // 게시글 조회수

   public int getUsbId() {
      return usbId;
   }

   public void setUsbId(int usbId) {
      this.usbId = usbId;
   }

   public String getUsbTitle() {
      return usbTitle;
   }

   public void setUsbTitle(String usbTitle) {
      this.usbTitle = usbTitle;
   }

   public String getUsbContent() {
      return usbContent;
   }

   public void setUsbContent(String usbContent) {
      this.usbContent = usbContent;
   }

   public Date getRegDate() {
      return regDate;
   }

   public void setRegDate(Date regdate) {
      this.regDate = regdate;
   }

   public int getUsbCnt() {
      return usbCnt;
   }

   public void setUsbCnt(int usbCnt) {
      this.usbCnt = usbCnt;
   }

   public String getUserId() {
	return userId;
   }

   public void setUserId(String userId) {
	this.userId = userId;
   }

}