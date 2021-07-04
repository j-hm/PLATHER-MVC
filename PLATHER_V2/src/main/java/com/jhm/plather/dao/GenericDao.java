package com.jhm.plather.dao;

import java.util.List;

import com.jhm.plather.model.NoticeDTO;

public interface GenericDao<VO, PK, DTO> {

	public List<DTO> selectAll();
	
	public NoticeDTO findById(PK pk);

	public int insert(VO vo);

	public int update(VO vo);

	public int delete(PK pk);
}
