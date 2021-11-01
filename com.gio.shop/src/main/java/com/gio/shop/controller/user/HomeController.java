package com.gio.shop.controller.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gio.shop.entities.Categories;
import com.gio.shop.services.CategoriesService;

@Controller
public class HomeController extends BaseController {
	
	@Autowired
	private CategoriesService categoriesService;
	
	@RequestMapping(value = { "/index" }, method = RequestMethod.GET)
	public String home(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		
List<Categories> categories = categoriesService.findAllActive();
		
		//day xuong view de xu ly
		model.addAttribute("categories",categories);
		
		return "user/index";
	}

}
