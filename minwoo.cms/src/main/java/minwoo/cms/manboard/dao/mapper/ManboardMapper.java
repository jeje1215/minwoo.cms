package minwoo.cms.manboard.dao.mapper;

import java.util.List;

import minwoo.cms.manboard.domain.ManboardInfo;
import minwoo.cms.manboard.domain.SubboardInfo;

public interface ManboardMapper {
	List<ManboardInfo> getBoardList();
	boolean insertBoard(ManboardInfo manboardInfo);
	ManboardInfo editListBoard(int mabId);
	boolean editBoard(ManboardInfo manboardInfo);
	SubboardInfo emptySub(SubboardInfo subboardInfo);
	int delBoard(int mabId);
}
