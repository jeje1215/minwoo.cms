package minwoo.cms.user.idpwfind.service;

import minwoo.cms.user.idpwfind.domain.UserInfo;

public interface IdpwfindService {
	UserInfo idFind(UserInfo userInfo);
	UserInfo pwFind(UserInfo userInfo);
}
