package minwoo.cms.user.manuser.dao;

import java.util.List;

import minwoo.cms.user.manuser.domain.ManUser;

public interface ManUserDao {
	List<ManUser> getUsers();
	ManUser editListUser(String userId);

}
