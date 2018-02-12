package minwoo.cms.manboard.dao.mapper;

import java.util.List;

import minwoo.cms.manboard.domain.SubboardInfo;

public interface SubboardMapper {
	List<SubboardInfo> getBoardList();
	boolean insertBoard(SubboardInfo subboardInfo);
	SubboardInfo editListBoard(int subId);
	boolean editBoard(SubboardInfo subboardInfo);
	int delBoard(int subId);

}
