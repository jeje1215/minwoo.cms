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
	   System.out.println(user.getUserNic());
	   System.out.println(user.getUserBirth());
	   System.out.println(user.getUserMail());
	   System.out.println(user.getUserPwd());
	   System.out.println(user.getUserNm());
      return userUpdateDao.updateUser(user)>0;
   }
}