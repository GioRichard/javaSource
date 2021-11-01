package com.gio.shop.controller.user;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.ModelAttribute;

public abstract class BaseController {
	
	public int getCurrentPage(HttpServletRequest request) {
		try {
			return Integer.parseInt(request.getParameter("page")) - 1; 
		} catch (Exception e) {
			return -1;
		}
	}
	
	@ModelAttribute("projectTitle")
	public String getUserLogined() {
		return "Gió Shoppet";
	}
}
