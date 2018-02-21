package minwoo.cms.messages.controller;

import minwoo.cms.messages.domain.Msg;
import minwoo.cms.messages.service.MsgService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MsgController {
	@Autowired private MsgService msgService;
	
	
	@RequestMapping("sendMsg")
	@ResponseBody
	public boolean addsend(Msg msg){
		return msgService.send(msg);
	}

}
