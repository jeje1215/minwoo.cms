package minwoo.cms.user.login.dao;

import java.text.SimpleDateFormat;

import minwoo.cms.user.login.dao.mapper.LoginMapper;
import minwoo.cms.user.login.domain.LoginInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LoginDaoImpl implements LoginDao{
	@Autowired private LoginMapper loginMapper;
	
	public LoginInfo chkId(LoginInfo login){
		return loginMapper.chkId(login);
	}
	
	public LoginInfo chkPwd(LoginInfo login){
		SimpleDateFormat regDate;
		regDate = new SimpleDateFormat("yyyy-MM-dd");
		login.setRegDate(regDate.format(loginMapper.getRegDate(login.getLoginId())));
		login.setUserLevel(loginMapper.getUserLevel(login.getLoginId()));
		return loginMapper.chkPwd(login);
	}	

}