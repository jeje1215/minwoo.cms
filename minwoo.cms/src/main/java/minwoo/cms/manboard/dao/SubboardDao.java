package minwoo.cms.manboard.dao;

import java.util.List;

import minwoo.cms.manboard.domain.SubboardInfo;

public interface SubboardDao {
	List<SubboardInfo> getBoardList();
	boolean insertBoard(SubboardInfo subboardInfo);
	SubboardInfo editListBoard(int subId);
	boolean editBoard(SubboardInfo subboardInfo);
	int delBoard(SubboardInfo subboardInfo);
	int emptySub(SubboardInfo subboardInfo);

}
