package minwoo.cms.user.userupdate.dao.mapper;

import java.util.List;

import minwoo.cms.user.userupdate.domain.User;

public interface UserMapper {
   List<User> getUsers(); //회원목록
   int updateUser(User user); //회원수정
}