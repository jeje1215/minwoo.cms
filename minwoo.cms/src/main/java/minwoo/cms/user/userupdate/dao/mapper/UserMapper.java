package minwoo.cms.user.userupdate.dao.mapper;

import minwoo.cms.user.userupdate.domain.User;

public interface UserMapper {
   User getUserInfo(User user); //회원정보
   int updateUser(User user); //회원수정
   int delUser(User user); //회원삭제
}