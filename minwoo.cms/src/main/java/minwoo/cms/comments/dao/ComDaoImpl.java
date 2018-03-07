package minwoo.cms.comments.dao;

import java.util.List;

import minwoo.cms.comments.dao.mapper.ComMapper;
import minwoo.cms.comments.domain.Comments;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ComDaoImpl implements ComDao {
	@Autowired private ComMapper comMapper;
	
	public int addCom(Comments comments){
		return comMapper.addCom(comments);
	}
	
	public List<Comments>getComs(int usbId){
		return comMapper.getComs(usbId); //댓글 목록
	}
	
	public int delCom(int comid){
		return comMapper.delCom(comid);
	}
}
