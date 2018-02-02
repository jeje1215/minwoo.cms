package minwoo.cms.user.login.controller;

import javax.servlet.http.HttpSession;

import minwoo.cms.user.login.domain.LoginInfo;
import minwoo.cms.user.login.service.LoginService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController {
	@Autowired private LoginService loginService;

/*	//메인 페이지로 이동
	@RequestMapping("/")
	public String form(){
		return "main";
	}	*/
	
	//로그인 체크
	@RequestMapping(value="/login/loginChk", method=RequestMethod.POST)
	@ResponseBody 
	public LoginInfo loginChk(LoginInfo login, HttpSession session){
		login = loginService.userChk(login);
		if (login.getResultCode() == 0){
			session.setAttribute("user", login);
		}
		return login;
	}	
	
	//로그아웃
	@RequestMapping(value="/login/logOut")
	@ResponseBody 
	public boolean logOut(HttpSession session){
		session.invalidate();
		return true;
	}
}
