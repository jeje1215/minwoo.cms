package minwoo.cms.user.login.dao;

import minwoo.cms.user.login.domain.LoginInfo;

public interface LoginDao {
	LoginInfo chkId(LoginInfo login);
	LoginInfo chkPwd(LoginInfo login);
}
