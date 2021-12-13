package com.site.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Main {

	@RequestMapping("/address")
	public String address() {
		return "address";
	}
	
	@RequestMapping("/kakaoMap")
	public String kakaoMap() {
		return "kakaoMap";
	}
}
