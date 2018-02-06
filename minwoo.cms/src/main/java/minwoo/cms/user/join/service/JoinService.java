package minwoo.cms.user.join.service;

import minwoo.cms.user.join.domain.User;

public interface JoinService {
	boolean userJoin(User user);
	boolean idChk(User user);
}
