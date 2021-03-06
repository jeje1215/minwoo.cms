package minwoo.cms.user.manuser.dao;

import java.util.List;

import minwoo.cms.user.manuser.domain.ManUser;

public interface ManUserDao {
	List<ManUser> getUsers(ManUser manUser); // 가입된 회원목록
	ManUser editListUser(String userId);
	boolean editLevelUser(ManUser manUser);
	//List<ManUser> getUsers2(List<String> checkVal);
	int cntGetUsers();
}
