package minwoo.cms.user.userupdate.dao;

import java.util.List;

import minwoo.cms.user.userupdate.dao.mapper.UserMapper;
import minwoo.cms.user.userupdate.domain.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class UserUpdateDaoImpl implements UserUpdateDao{
   @Autowired private UserMapper userMapper;
   
   //회원 목록 얻기
   public List<User> getUsers(){
      return userMapper.getUsers();
   }
   //회원 정보 수정
   public int updateUser(User user){
      return userMapper.updateUser(user);
   }
}