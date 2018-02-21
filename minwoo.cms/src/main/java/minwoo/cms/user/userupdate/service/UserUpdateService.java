package minwoo.cms.user.userupdate.service;


import minwoo.cms.user.userupdate.domain.User;

public interface UserUpdateService {
   User userList(User user); //회원정보
   boolean fixUserInfo(User user); //회원수정
}