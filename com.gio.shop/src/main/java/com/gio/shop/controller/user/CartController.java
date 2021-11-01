package com.gio.shop.controller.user;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gio.shop.dto.Cart;
import com.gio.shop.dto.CartItem;
import com.gio.shop.entities.Product;
import com.gio.shop.services.ProductService;

@Controller
public class CartController extends BaseController {
	
	@Autowired
	ProductService productService;
	
	
	@RequestMapping(value = { "/cart/add" }, method = RequestMethod.POST)
	public  ResponseEntity<Map<String, Object>> addToCart(final ModelMap model,
			final HttpServletRequest request,
			final HttpServletResponse response,
			final @RequestBody CartItem newItem ){
		
		//lay doi tuong sesstion
		//session tuong tu nhu la 1 map luu tren ram cua server
		HttpSession session = request.getSession();
		
		//lay thong tin gio hang
		Cart cart = null;
		
		//kiem tra xem da co gio hang tren session
		if(session.getAttribute("cart") != null) {
			//neu ton tai gio hang thi lay ra tu session
			cart = (Cart)session.getAttribute("cart");
		}
		else {
			cart = new Cart(); //khoi tao gio hang neu chua co
			session.setAttribute("cart", cart); //luu gio hang tren session
		}
		
		//lay tat ca cac san pham co trong gio hang
		List<CartItem> cartItems = cart.getCartItems();
		
		//bat dau ktra xem da ton tai chua
		boolean isExists = false;
		for (CartItem item : cartItems) {
			if(item.getProductId() == newItem.getProductId()) {
				isExists = true;
				item.setQuanlity(item.getQuanlity() + newItem.getQuanlity());
			}
		}
		
		//neu ko ton tai san pham trong gio hang
		if(!isExists) {
			//lay thong tin san pham tu db
			Product productInDb = productService.getById(newItem.getProductId());
			
			//thiet lap cac gia tri khac cua item
			newItem.setProductName(productInDb.getTitle());
			newItem.setPriceUnit(productInDb.getPrice());
			
			//add san pham vao gio hang
			cart.getCartItems().add(newItem);
		}
		
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200); //200 quy uoc la thanh cong //500 la ko thanh cong
		jsonResult.put("status", "TC");
		jsonResult.put("totalItems", getTotalItems(request));
		
		session.setAttribute("totalItems",getTotalItems(request) );
		return ResponseEntity.ok(jsonResult);
	}
	
	private int getTotalItems(final HttpServletRequest request) {
		HttpSession httpSession = request.getSession();
		
		if(httpSession.getAttribute("cart")==null) {
			return 0;
		}
		
		Cart cart = (Cart) httpSession.getAttribute("cart");
		List<CartItem> cartItems = cart.getCartItems();
		
		int total =0;
		for (CartItem item : cartItems) {
			total +=item.getQuanlity();
		}
		return total;
	}
	
}
