package minwoo.cms.user.login.service;

import minwoo.cms.user.login.domain.LoginInfo;

public interface LoginService {
	LoginInfo userChk(LoginInfo login);
}
