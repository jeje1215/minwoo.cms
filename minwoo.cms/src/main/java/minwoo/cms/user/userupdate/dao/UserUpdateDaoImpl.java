package minwoo.cms.user.userupdate.dao;

import minwoo.cms.user.userupdate.dao.mapper.UserMapper;
import minwoo.cms.user.userupdate.domain.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class UserUpdateDaoImpl implements UserUpdateDao{
   @Autowired private UserMapper userMapper;
   
   //회원 정보 얻기
   public User getUserInfo(User user){
      return userMapper.getUserInfo(user);
   }
   //회원 정보 수정
   public int updateUser(User user){
      return userMapper.updateUser(user);
   }
}