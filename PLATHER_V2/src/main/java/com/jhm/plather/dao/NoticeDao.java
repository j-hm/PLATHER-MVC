package com.jhm.plather.dao;

import java.util.List;

import com.jhm.plather.model.NoticeDTO;
import com.jhm.plather.model.NoticeVO;

public interface NoticeDao extends GenericDao<NoticeVO, String, NoticeDTO> {

	public List<NoticeDTO> findByTitle(String n_title);
	public String findByMaxNcode();
}
