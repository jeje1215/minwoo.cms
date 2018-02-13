package minwoo.cms.user.userupdate.service;

import java.util.List;

import minwoo.cms.user.userupdate.domain.User;

public interface UserUpdateService {
   List<User> listUsers(); //회원목록
   boolean fixUserInfo(User user); //회원수정
}