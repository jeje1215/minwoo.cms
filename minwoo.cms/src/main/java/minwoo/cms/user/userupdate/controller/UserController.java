package minwoo.cms.user.userupdate.controller;

import java.util.List;

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
   public List<User> listUsers(){
      return userUpdateService.listUsers();
   }
   @RequestMapping("fixUserInfo")
   @ResponseBody
   public boolean fixUserInfo(User user){
      System.out.println("승창");
      return userUpdateService.fixUserInfo(user);
   }
}