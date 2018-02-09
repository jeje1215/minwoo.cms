package minwoo.cms.manboard.service;

import minwoo.cms.manboard.dao.ManboardDao;
import minwoo.cms.manboard.domain.ManboardInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ManboardServiceImpl implements ManboardService{
	@Autowired ManboardDao manboardDao;
	
	public ManboardInfo boardList(){
		return manboardDao.getBoardList();
	}
}
