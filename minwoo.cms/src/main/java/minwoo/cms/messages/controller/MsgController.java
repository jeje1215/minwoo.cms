package minwoo.cms.messages.controller;

import minwoo.cms.messages.domain.Msg;
import minwoo.cms.messages.service.MsgService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MsgController {
	@Autowired private MsgService msgService;
	
	
	@RequestMapping("/message")
	public String main(){
		return "message/main";
	}
	
	@RequestMapping(value="/sendmsg",method=RequestMethod.POST)
	@ResponseBody
	public boolean send(Msg msg){
		
		System.out.println(msg.getMesGetId());
		System.out.println(msg.getMesContent());
		System.out.println(msg.getUserId());
		
		return msgService.send(msg);
	}

}
