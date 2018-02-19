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
	
	public boolean addManboard(SubboardInfo subboardInfo){
		return subboardDao.insertBoard(subboardInfo);
	}
	
	public SubboardInfo modiListManboard(int subId){
		return subboardDao.editListBoard(subId);
	}
	
	public boolean modiManboard(SubboardInfo subboardInfo){
		return subboardDao.editBoard(subboardInfo);
	}	
	
	public int removeManboard(SubboardInfo subboardInfo){
		int fin = 0; //삭제 성공
		int emptyYn = 0;
		emptyYn = subboardDao.emptySub(subboardInfo);
		if (emptyYn == 0){ // 삭제 가능
			fin = subboardDao.delBoard(subboardInfo);
		}else{ //회원게시판 존재하므로 회원게시판 삭제 불가
			fin = 1;
		}
		return fin;		
	}	
}
