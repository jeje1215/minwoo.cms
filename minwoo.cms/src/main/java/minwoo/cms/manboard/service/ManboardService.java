package minwoo.cms.manboard.service;

import java.util.List;

import minwoo.cms.manboard.domain.ManboardInfo;

public interface ManboardService {
	List<ManboardInfo> boardList();
	boolean addManboard(ManboardInfo manboardInfo);
}
