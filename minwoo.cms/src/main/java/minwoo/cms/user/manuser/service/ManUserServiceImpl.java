package minwoo.cms.user.manuser.service;

import java.util.List;

import minwoo.cms.user.manuser.dao.ManUserDao;
import minwoo.cms.user.manuser.domain.ManUser;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ManUserServiceImpl implements ManUserService{
	@Autowired ManUserDao manUserDao;
	
	public List<ManUser> listUsers(ManUser manUser){
		return manUserDao.getUsers(manUser);
	}
	
	public ManUser modiListManUser(String userId){
		return manUserDao.editListUser(userId);
	}
	
	public boolean modiLevelManUser(ManUser manUser){
		return manUserDao.editLevelUser(manUser);
	}
	
	public int cntUser(){
		return manUserDao.cntGetUsers();
	}

}