package minwoo.cms.user.userupdate.service;

import java.util.List;

import minwoo.cms.user.userupdate.dao.UserUpdateDao;
import minwoo.cms.user.userupdate.domain.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserUpdateServiceImpl implements UserUpdateService{
   @Autowired private UserUpdateDao userUpdateDao;
   
   public List<User> listUsers(){
      return userUpdateDao.getUsers();
   }
   
   @Transactional
   public boolean fixUserInfo(User user){
      return userUpdateDao.updateUser(user)>0;
   }
}