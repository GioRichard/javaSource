package com.gio.shop.controller.user;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	@RequestMapping(value = { "/login" }, method = RequestMethod.GET) // --> action
	public String login(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		return "user/login"; // duong dan toi view
	}
	
	@RequestMapping(value = { "/save-login" }, method = RequestMethod.POST) // --> action
	public String saveLogin(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		
		//lay thong tin nguoi dung day len
		String email = request.getParameter("txtemail");
		//2. luu thong tin vao co so du lieu
		//thong bao cho ng dung biet d luu thanh cong 
		model.addAttribute("thongbao", "cam on ban" + email+"da gui lien he!");
		
		return "user/login"; // duong dan toi view
	}
}
