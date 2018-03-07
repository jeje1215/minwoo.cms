package minwoo.cms.manboard.service;

import java.util.List;

import minwoo.cms.manboard.domain.SubboardInfo;

public interface SubboardService {
	List<SubboardInfo> boardList();
	boolean addManboard(SubboardInfo subboardInfo);
	SubboardInfo modiListManboard(int subId);
	boolean modiManboard(SubboardInfo subboardInfo);
	int removeManboard(SubboardInfo subboardInfo);
}
