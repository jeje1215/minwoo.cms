package minwoo.cms.manboard.dao.mapper;

import java.util.List;

import minwoo.cms.manboard.domain.ManboardInfo;

public interface ManboardMapper {
	List<ManboardInfo> getBoardList();
}
