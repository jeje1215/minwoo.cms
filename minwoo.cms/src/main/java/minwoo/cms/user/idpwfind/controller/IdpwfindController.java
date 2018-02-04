package minwoo.cms.user.idpwfind.controller;

import minwoo.cms.user.idpwfind.domain.UserInfo;
import minwoo.cms.user.idpwfind.service.IdpwfindService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class IdpwfindController {
	@Autowired private IdpwfindService idpwfindService;

	//아이디 찾기
	@RequestMapping(value="/find/idFind", method=RequestMethod.POST)
	@ResponseBody 
	public UserInfo idFind(UserInfo userInfo){
		userInfo = idpwfindService.idFind(userInfo);
		return userInfo;
	}	
	
	//비밀번호 찾기
	@RequestMapping(value="/find/pwFind")
	@ResponseBody 
	public UserInfo pwFind(UserInfo userInfo){
		userInfo = idpwfindService.pwFind(userInfo);
		return userInfo;
	}
}
