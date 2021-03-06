package minwoo.cms.comments.service;

import java.util.List;

import minwoo.cms.comments.dao.ComDao;
import minwoo.cms.comments.domain.Comments;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ComServiceImpl implements ComService{
	@Autowired private ComDao comDao;
	
	public List<Comments>listComs(int usbId){
		return comDao.getComs(usbId);
	}
	
	public boolean comjoin(Comments comments){
		return comDao.addCom(comments)>0;
	}
	
	public boolean comdel(int comid){
		return comDao.delCom(comid)>0;
	}
}
