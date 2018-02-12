package minwoo.cms.manboard.dao;

import java.util.List;

import minwoo.cms.manboard.domain.ManboardInfo;
import minwoo.cms.manboard.domain.SubboardInfo;

public interface ManboardDao {
	List<ManboardInfo> getBoardList();
	boolean insertBoard(ManboardInfo manboardInfo);
	ManboardInfo editListBoard(int mabId);
	boolean editBoard(ManboardInfo manboardInfo);
	SubboardInfo emptySub(SubboardInfo subboardInfo);
	int delBoard(ManboardInfo manboardInfo);
}
