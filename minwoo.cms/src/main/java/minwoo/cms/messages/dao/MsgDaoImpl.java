package minwoo.cms.messages.dao;

import minwoo.cms.messages.dao.mapper.MsgMapper;
import minwoo.cms.messages.domain.Msg;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MsgDaoImpl implements MsgDao{
	@Autowired private MsgMapper msgMapper;
	
	public int addMsg(Msg msg){
		return msgMapper.addMsg(msg);
	}
}
