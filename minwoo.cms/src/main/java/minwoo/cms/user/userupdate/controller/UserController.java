package minwoo.cms.user.userupdate.controller;


import minwoo.cms.user.userupdate.domain.User;
import minwoo.cms.user.userupdate.service.UserUpdateService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class UserController {
   @Autowired private UserUpdateService userUpdateService;
   
   @RequestMapping("/update")
   public String main(){
      return "user/update/main";
   }
   
   @RequestMapping("listUsers")
   @ResponseBody
   public User listUsers(User user){
	  // System.out.println(user.getUserNm());
      return userUpdateService.userList(user);
   }
   @RequestMapping(value="fixUserInfo", method=RequestMethod.POST)
   @ResponseBody
   public boolean fixUserInfo(User user){
	   return userUpdateService.fixUserInfo(user);
   }
}