package minwoo.cms.user.userupdate.dao;


import minwoo.cms.user.userupdate.domain.User;

public interface UserUpdateDao {
   User getUserInfo(User user); //회원정보
   int updateUser(User user); //회원수정
   int delUser(User user); //삭제
}