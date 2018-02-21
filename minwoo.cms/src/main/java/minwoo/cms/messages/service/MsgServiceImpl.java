package minwoo.cms.messages.service;

import minwoo.cms.messages.dao.MsgDao;
import minwoo.cms.messages.domain.Msg;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class MsgServiceImpl implements MsgService{
	@Autowired private MsgDao msgDao;
	
	@Transactional
	public boolean send(Msg msg){
		return msgDao.addMsg(msg)>0;
	}
}
