package com.gio.shop.controller.user;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
;

@Controller
public class ProductController extends BaseController {

	@RequestMapping(value = {"/product"}, method = RequestMethod.GET)
	public String product(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
	throws IOException{
//		model.addAttribute("product",new Product());
		return "user/product";
	}
	
	
	
}



//@Controller
//public class ProductController extends BaseController {
//	@Autowired
//	 private ProductService productService;
//	
//	@RequestMapping(value = {"/detailProduct/{productId}"}, method = RequestMethod.GET)
//		public String productDetail(final Model model,
//					final HttpServletRequest request,
//					final HttpServletResponse response,
//					@PathVariable ("productId") int productId)
//		throws IOException{
//			Product product = new Product();
//			product = productService.getById(productId);
//			model.addAttribute("product", product);
//			return "user/product";
//		}
//}