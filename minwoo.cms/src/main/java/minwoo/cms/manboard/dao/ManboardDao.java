package minwoo.cms.manboard.dao;

import java.util.List;

import minwoo.cms.manboard.domain.ManboardInfo;

public interface ManboardDao {
	List<ManboardInfo> getBoardList();
	boolean insertBoard();
}
