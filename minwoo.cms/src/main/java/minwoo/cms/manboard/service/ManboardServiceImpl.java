package minwoo.cms.manboard.service;

import java.util.List;

import minwoo.cms.manboard.dao.ManboardDao;
import minwoo.cms.manboard.domain.ManboardInfo;
import minwoo.cms.manboard.domain.SubboardInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ManboardServiceImpl implements ManboardService{
	@Autowired ManboardDao manboardDao;
	
	public List<ManboardInfo> boardList(){
		return manboardDao.getBoardList();
	}
	
	public boolean addManboard(ManboardInfo manboardInfo){
		return manboardDao.insertBoard(manboardInfo);
	}
	
	public ManboardInfo modiListManboard(int mabId){
		return manboardDao.editListBoard(mabId);
	}
	
	public boolean modiManboard(ManboardInfo manboardInfo){
		return manboardDao.editBoard(manboardInfo);
	}
	
	public int removeManboard(ManboardInfo manboardInfo){
		int fin = 0; //삭제 성공
		SubboardInfo subboard = new SubboardInfo();
		subboard.setMabId(manboardInfo.getMabId());
		subboard = manboardDao.emptySub(subboard);
		if (subboard == null){ // 삭제 가능
			fin = manboardDao.delBoard(manboardInfo);
		}else{ //서브게시판 존재하므로 메인게시판 삭제 불가
			fin = 1;
		}
		return fin;
	}
}
