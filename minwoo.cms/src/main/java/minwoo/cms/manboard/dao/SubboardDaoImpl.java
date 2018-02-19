package minwoo.cms.manboard.dao;

import java.util.List;

import minwoo.cms.manboard.dao.mapper.SubboardMapper;
import minwoo.cms.manboard.domain.SubboardInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SubboardDaoImpl implements SubboardDao{
	@Autowired SubboardMapper subboardMapper;

	public List<SubboardInfo> getBoardList(){
/*		List<ManboardInfo> tmp = manboardMapper.getBoardList();
		for (ManboardInfo manboardInfo : tmp) {
			System.out.println(manboardInfo.getMabNm());
		}	*/	
		
		return subboardMapper.getBoardList();
	}
	
	public boolean insertBoard(SubboardInfo subboardInfo){
		return subboardMapper.insertBoard(subboardInfo);
	}
	
	public SubboardInfo editListBoard(int subId){
		return subboardMapper.editListBoard(subId);
	}	
	
	public boolean editBoard(SubboardInfo subboardInfo){
		return subboardMapper.editBoard(subboardInfo);
	}	
		
	public int delBoard(SubboardInfo subboardInfo){
		int isDel = 1;
		if(subboardMapper.delBoard(subboardInfo.getSubId())>0)
			isDel = 0;
		return isDel;
	}
	
	public int emptySub(SubboardInfo subboardInfo){
		return subboardMapper.emptySub(subboardInfo.getSubId());
	}	
}
