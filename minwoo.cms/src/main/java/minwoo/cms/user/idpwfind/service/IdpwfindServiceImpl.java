package minwoo.cms.user.idpwfind.service;

import minwoo.cms.user.idpwfind.dao.IdpwfindDao;
import minwoo.cms.user.idpwfind.domain.UserInfo;
import minwoo.cms.user.login.domain.LoginInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class IdpwfindServiceImpl implements IdpwfindService{
	@Autowired
	private IdpwfindDao idpwfindDao;
	
	public UserInfo idFind(UserInfo userInfo) {
		UserInfo tmpInfo = null;
		userInfo.setResultCode(9); //error
		tmpInfo = idpwfindDao.chkId(userInfo);

		if (tmpInfo == null) {
			userInfo.setResultCode(1);//일치하는 정보 없음
		} else {
			userInfo.setResultCode(2);//성공
			userInfo.setUserId(tmpInfo.getUserId());
		}		
		return userInfo;
	}
	
	public UserInfo pwdFind(UserInfo userInfo) {
		UserInfo tmpInfo = null;
		String userPwd;
		String finPwd;
		userInfo.setResultCode(9); //error
		tmpInfo = idpwfindDao.chkPwd(userInfo);

		if (tmpInfo == null) {
			userInfo.setResultCode(1);//일치하는 정보 없음
			//System.out.println(userInfo.getUserId());
			//System.out.println(userInfo.getUserMail());
		} else {
			userInfo.setResultCode(2);//성공
			userPwd = tmpInfo.getUserPwd();
			System.out.println(userPwd);
			System.out.println("------");
			finPwd = userPwd.substring(0, 2); //앞에 3글자
			for(int i=3; i< userPwd.length(); i++){
				finPwd = finPwd + "*";
			}
			userInfo.setUserPwd(finPwd);
		}		
		return userInfo;
	}	
	
}
