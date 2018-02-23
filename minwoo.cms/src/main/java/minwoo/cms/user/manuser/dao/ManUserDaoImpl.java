package minwoo.cms.user.manuser.dao;

import java.util.ArrayList;
import java.util.List;

import minwoo.cms.user.manuser.dao.mapper.ManUserMapper;
import minwoo.cms.user.manuser.domain.ManUser;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ManUserDaoImpl implements ManUserDao{
	@Autowired ManUserMapper manUserMapper;
	
	public List<ManUser> getUsers(){
		return manUserMapper.getUsers();
	}
	
	public ManUser editListUser(String userId){
		return manUserMapper.editListUser(userId);
	}
	
	public boolean editLevelUser(ManUser manUser){
		List<String> list = new ArrayList<String>();
		list.add("tmdckdzoq");
		list.add("nsc6173");	
		list.add("tmdckd0102");		
		//manUser.setTmpCheckVal(list);
		return manUserMapper.editLevelUser(manUser);
	}

}