package minwoo.cms.user.userupdate.controller;


import minwoo.cms.user.userupdate.domain.User;
import minwoo.cms.user.userupdate.service.UserUpdateService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
      return userUpdateService.userList(user);
   }
}