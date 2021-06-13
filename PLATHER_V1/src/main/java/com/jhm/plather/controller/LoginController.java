package com.jhm.plather.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping(value = "/login")
public class LoginController {
	@RequestMapping(value = { "/", "" }, method = RequestMethod.GET)
	public String login() {

		return "member/login";
	}
	@RequestMapping(value =  "/join", method = RequestMethod.GET)
	public String join() {

		return "member/join";
	}


}
