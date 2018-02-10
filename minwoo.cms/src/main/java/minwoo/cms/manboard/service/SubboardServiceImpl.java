package minwoo.cms.manboard.service;

import java.util.List;

import minwoo.cms.manboard.dao.SubboardDao;
import minwoo.cms.manboard.domain.SubboardInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SubboardServiceImpl implements SubboardService{
	@Autowired SubboardDao subboardDao;
	
	public List<SubboardInfo> boardList(){
		return subboardDao.getBoardList();
	}
}
