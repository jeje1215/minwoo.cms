package minwoo.cms.user.login.service;

import minwoo.cms.user.login.dao.LoginDao;
import minwoo.cms.user.login.domain.LoginInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService {
	@Autowired
	private LoginDao loginDao;

	public LoginInfo userChk(LoginInfo loginInfo) {
		LoginInfo login = new LoginInfo();
		loginInfo.setResultCode(9); //error
		login = loginDao.chkId(loginInfo);

		if (login == null) {
			loginInfo.setResultCode(1);//아이디 오류
			//login = loginInfo;
		} else {
			login = loginDao.chkPwd(loginInfo);
			if (login == null) {
				loginInfo.setResultCode(2);//비밀번호 오류
				//login = loginInfo;
			} else {
				loginInfo.setResultCode(0);//성공
			}
		}
		return loginInfo;
	}
}
