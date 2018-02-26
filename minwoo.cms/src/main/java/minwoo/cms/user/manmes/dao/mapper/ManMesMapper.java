package minwoo.cms.user.manmes.dao.mapper;

import java.util.List;

import minwoo.cms.user.manmes.domain.Mes;


public interface ManMesMapper {
	List<Mes>getMess(String userId);	
	boolean delMess(Mes mes);


}
