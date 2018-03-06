package minwoo.cms.comments.dao;

import java.util.List;

import minwoo.cms.comments.domain.Comments;

public interface ComDao {
	int addCom(Comments comments); //댓글 추가
	List<Comments>getComs();//댓글 목록

}
