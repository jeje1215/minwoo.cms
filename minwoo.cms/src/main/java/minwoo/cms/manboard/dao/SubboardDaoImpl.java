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
}
