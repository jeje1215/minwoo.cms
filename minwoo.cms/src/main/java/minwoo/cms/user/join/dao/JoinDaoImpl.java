package minwoo.cms.user.join.dao;

import minwoo.cms.user.join.dao.mapper.JoinMapper;
import minwoo.cms.user.join.domain.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class JoinDaoImpl implements JoinDao{
	@Autowired
	private JoinMapper joinMapper;
	
	public boolean addUser(User user){
		boolean result = false;
		if(joinMapper.addUser(user)>0){
			result = true;
		}
		return result;
	}
	
}
