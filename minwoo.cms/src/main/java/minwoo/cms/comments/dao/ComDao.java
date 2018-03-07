package minwoo.cms.comments.dao;

import java.util.List;

import minwoo.cms.comments.domain.Comments;

public interface ComDao {
	int addCom(Comments comments); //댓글 추가
	List<Comments>getComs(int usbId);//댓글 목록
	int delCom(int comid);
}
