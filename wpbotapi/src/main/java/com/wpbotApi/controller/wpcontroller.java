package com.wpbotApi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class wpcontroller {
	@RequestMapping("/")
public String ui() {
	return "wpui";
}
}
