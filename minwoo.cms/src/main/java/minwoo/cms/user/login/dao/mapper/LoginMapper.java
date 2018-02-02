package minwoo.cms.user.login.dao.mapper;

import java.util.Date;

import minwoo.cms.user.login.domain.LoginInfo;

public interface LoginMapper {
	LoginInfo chkId(LoginInfo login);
	LoginInfo chkPwd(LoginInfo login);
	Date getRegDate(String loginId);
	String getUserLevel(String loginId);
}
