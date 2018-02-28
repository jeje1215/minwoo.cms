package minwoo.cms.user.userupdate.service;

import minwoo.cms.user.userupdate.dao.UserUpdateDao;
import minwoo.cms.user.userupdate.domain.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserUpdateServiceImpl implements UserUpdateService{
   @Autowired private UserUpdateDao userUpdateDao;
   
   public User userList(User user){
      return userUpdateDao.getUserInfo(user);
   }
  
   public boolean fixUserInfo(User user){
      return userUpdateDao.updateUser(user)>0;
   }
   
   public boolean secede(User user){
	   
      return userUpdateDao.delUser(user)>0;
   }
}