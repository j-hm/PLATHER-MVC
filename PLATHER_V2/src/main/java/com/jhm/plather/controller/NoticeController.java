package com.jhm.plather.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jhm.plather.dao.NoticeDao;
import com.jhm.plather.model.NoticeDTO;
import com.jhm.plather.model.NoticeVO;
import com.jhm.plather.sevice.NoticeService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping(value = "/notice")
public class NoticeController {

	@Qualifier("notionService")
	protected final NoticeService nService;
	protected final NoticeDao nDao;

	@RequestMapping(value = { "/", "" }, method = RequestMethod.GET)
	public String list(Model model) {
		List<NoticeDTO> nvList = nService.selectAll();
		model.addAttribute("NOTICES", nvList);
		log.debug(nvList.toString());
		return "notice/notice_list";
	}

	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String detail(String n_code, Model model) {

		NoticeDTO nDTO = nService.findByNcode(n_code);
		model.addAttribute("NT", nDTO);

		return "notice/notice_detail";
	}

	@RequestMapping(value = "/input", method = RequestMethod.GET)
	public String input() {
		return "notice/notice_input";
	}

	@RequestMapping(value = "/input", method = RequestMethod.POST)
	public String input(NoticeVO noticeVO) {

		nService.insert(noticeVO);
		return "redirect:/notice";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(String n_code) {
		nDao.delete(n_code);
		return "redirect:/notice";
	}

	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String update(String n_code, Model model) {
		NoticeDTO nDTO = nService.findByNcode(n_code);
		model.addAttribute("NT", nDTO);
		return "notice/notice_input";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(NoticeVO noticeVO) {
		nDao.update(noticeVO);
		return "redirect:/notice";
	}
}
