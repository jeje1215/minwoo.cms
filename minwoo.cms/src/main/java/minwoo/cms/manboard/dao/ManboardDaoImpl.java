package minwoo.cms.manboard.dao;

import java.util.List;

import minwoo.cms.manboard.dao.mapper.ManboardMapper;
import minwoo.cms.manboard.domain.ManboardInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ManboardDaoImpl implements ManboardDao{
	@Autowired ManboardMapper manboardMapper;

	public List<ManboardInfo> getBoardList(){
		return manboardMapper.getBoardList();
	}
}
