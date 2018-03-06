package minwoo.cms.user.manuser.service;

import java.util.List;

import minwoo.cms.user.manuser.domain.ManUser;

public interface ManUserService {
	List<ManUser> listUsers(ManUser manUser); //가입된 회원목록
	ManUser modiListManUser(String userId);
	boolean modiLevelManUser(ManUser manUser);
	int cntUser();
}
