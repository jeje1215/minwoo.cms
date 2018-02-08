package minwoo.cms.manboard.dao;

import minwoo.cms.manboard.dao.mapper.ManboardMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ManboardDaoImpl implements ManboardDao{
	@Autowired ManboardMapper manboardMapper;

}
