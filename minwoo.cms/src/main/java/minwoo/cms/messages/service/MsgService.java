package minwoo.cms.messages.service;

import minwoo.cms.messages.domain.Msg;

public interface MsgService {	
	boolean send(Msg msg);

}
