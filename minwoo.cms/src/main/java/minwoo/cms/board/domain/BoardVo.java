package minwoo.cms.board.domain;

import java.util.Date;

public class BoardVo {
   private int usbId; // 게시글 번호
   private String usbTitle; // 게시글 제목
   private String usbContent; // 게시글 내용
   private String subId; // 게시글 작성자
   private Date regdate; // 게시글 작성일자
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

   public String getSubId() {
      return subId;
   }

   public void setSubId(String subId) {
      this.subId = subId;
   }

   public Date getRegdate() {
      return regdate;
   }

   public void setRegdate(Date regdate) {
      this.regdate = regdate;
   }

   public int getUsbCnt() {
      return usbCnt;
   }

   public void setUsbCnt(int usbCnt) {
      this.usbCnt = usbCnt;
   }

}