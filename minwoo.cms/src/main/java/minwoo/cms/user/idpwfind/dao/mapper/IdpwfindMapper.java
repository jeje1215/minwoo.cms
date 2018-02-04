package minwoo.cms.user.idpwfind.dao.mapper;

import minwoo.cms.user.idpwfind.domain.UserInfo;

public interface IdpwfindMapper {
	UserInfo idFind(UserInfo userInfo);
	UserInfo pwdFind(UserInfo userInfo);
}
