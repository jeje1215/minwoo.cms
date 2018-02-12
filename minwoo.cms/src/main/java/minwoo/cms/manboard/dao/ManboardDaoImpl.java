package minwoo.cms.manboard.dao;

import java.util.List;

import minwoo.cms.manboard.dao.mapper.ManboardMapper;
import minwoo.cms.manboard.domain.ManboardInfo;
import minwoo.cms.manboard.domain.SubboardInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ManboardDaoImpl implements ManboardDao{
	@Autowired ManboardMapper manboardMapper;

	public List<ManboardInfo> getBoardList(){
		return manboardMapper.getBoardList();
	}
	
	public boolean insertBoard(ManboardInfo manboardInfo){
		return manboardMapper.insertBoard(manboardInfo);
	}
	
	public ManboardInfo editListBoard(int mabId){
		return manboardMapper.editListBoard(mabId);
	}
	
	public boolean editBoard(ManboardInfo manboardInfo){
		return manboardMapper.editBoard(manboardInfo);
	}
	
	public SubboardInfo emptySub(SubboardInfo subboardInfo){
		return manboardMapper.emptySub(subboardInfo);
	}
	
	public int delBoard(ManboardInfo manboardInfo){
		int isDel = 1;
		if(manboardMapper.delBoard(manboardInfo.getMabId())>0)
			isDel = 0;
		return isDel;
	}
}
