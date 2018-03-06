package minwoo.cms.comments.service;

import java.util.List;

import minwoo.cms.comments.domain.Comments;

public interface ComService {
	boolean comjoin(Comments comments);
	List<Comments>listComs(); 

}
