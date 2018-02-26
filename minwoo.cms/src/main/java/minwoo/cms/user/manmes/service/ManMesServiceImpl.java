package minwoo.cms.user.manmes.service;

import java.util.List;

import minwoo.cms.user.manmes.dao.ManMesDao;
import minwoo.cms.user.manmes.domain.Mes;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ManMesServiceImpl implements ManMesService{
	@Autowired private ManMesDao manmesDao;
	
	public List<Mes>listMess(String userId){ //목록
		return manmesDao.getMess(userId);
	}
	public boolean delMess(Mes mes){ //체크박스 값 지우기 
		return manmesDao.delMess(mes);
	}

}
