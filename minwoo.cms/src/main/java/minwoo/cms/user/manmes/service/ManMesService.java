package minwoo.cms.user.manmes.service;

import java.util.List;

import minwoo.cms.user.manmes.domain.Mes;

public interface ManMesService {
	List<Mes>listMess(String userId);
	boolean delMess(Mes mes);
	

}
