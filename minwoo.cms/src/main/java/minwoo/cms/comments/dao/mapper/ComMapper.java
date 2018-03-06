package minwoo.cms.comments.dao.mapper;

import java.util.List;

import minwoo.cms.comments.domain.Comments;

public interface ComMapper {
	int addCom(Comments comments); //댓글 추가 
	List<Comments>getComs(); //댓글 목록

}
