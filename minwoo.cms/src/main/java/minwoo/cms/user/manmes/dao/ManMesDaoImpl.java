package minwoo.cms.user.manmes.dao;

import java.util.List;

import minwoo.cms.user.manmes.dao.mapper.ManMesMapper;
import minwoo.cms.user.manmes.domain.Mes;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ManMesDaoImpl implements ManMesDao {
	@Autowired private ManMesMapper manmesMapper;
	
	public List<Mes>getMess(String userId){
		return manmesMapper.getMess(userId);
	}
	public boolean delMess(Mes mes){
		return manmesMapper.delMess(mes);
	}
	
	
	
//	
//	public boolean editLevelUser(ManUser manUser){
//		List<String> list = new ArrayList<String>();
////		list.add("tmdckdzoq");
////		list.add("nsc6173");	
////		list.add("tmdckd0102");		
//		//manUser.setTmpCheckVal(list);
//		return manUserMapper.editLevelUser(manUser);
//	}

	
	
	
	
}
