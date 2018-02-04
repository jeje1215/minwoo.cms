package minwoo.cms.user.idpwfind.dao;

import minwoo.cms.user.idpwfind.domain.UserInfo;

public interface IdpwfindDao {
	UserInfo chkId(UserInfo userInfo);
	UserInfo chkPwd(UserInfo userInfo);
}
