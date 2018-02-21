package minwoo.cms.user.manuser.dao.mapper;

import java.util.List;

import minwoo.cms.user.manuser.domain.ManUser;

public interface ManUserMapper {
	List<ManUser> getUsers(); //가입된 회원목록
	ManUser editListUser(String userId);
	boolean editLevelUser(ManUser manUser);
	List<ManUser> getUlevels();
}
