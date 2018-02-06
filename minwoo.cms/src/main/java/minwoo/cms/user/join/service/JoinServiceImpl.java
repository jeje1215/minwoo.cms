package minwoo.cms.user.join.service;

import minwoo.cms.user.join.dao.JoinDao;
import minwoo.cms.user.join.domain.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service 
public class JoinServiceImpl implements JoinService{
	@Autowired 
	private JoinDao joinDao;
	
	public boolean userJoin(User user){
		joinDao.addUser(user);
		return true;
	}
}
