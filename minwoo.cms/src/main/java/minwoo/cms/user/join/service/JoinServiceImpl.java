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
		return joinDao.addUser(user);
	}
	
	public boolean idChk(User user){
		User tempUser = new User();
		boolean result;
		tempUser = joinDao.doubleChk(user);
		if (tempUser == null){ //조회되는 값이 없으면 아이디 사용 가능
			result = true;
		}else{
			result = false;
		}
		
		return result;
	}
}
