package minwoo.cms.user.userupdate.dao;

import java.util.List;

import minwoo.cms.user.userupdate.dao.mapper.UserUpdateMapper;
import minwoo.cms.user.userupdate.domain.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserUpdateDaoImpl implements UserUpdateDao{
	@Autowired private UserUpdateMapper userMapper;
	
	//회원 목록을 얻는다.
	//return:회원목록
	public List<User> getUser(){
		return userMapper.getUsers();
	}
	//회원 정보를 수정한다.
	//return:수정할 회원수정
	//param: 수정할 회원
	public int updateUser(User user){
		return userMapper.updateUser(user);
	}
}
