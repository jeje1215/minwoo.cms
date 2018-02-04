package minwoo.cms.user.idpwfind.dao;

import minwoo.cms.user.idpwfind.dao.mapper.IdpwfindMapper;
import minwoo.cms.user.idpwfind.domain.UserInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class IdpwfindDaoImpl implements IdpwfindDao{
	@Autowired private IdpwfindMapper idpwfindMapper;
	
	public UserInfo chkId(UserInfo userInfo){
		return idpwfindMapper.idFind(userInfo);
	}
	
	public UserInfo chkPwd(UserInfo userInfo){
		return idpwfindMapper.pwdFind(userInfo);
	}

}
