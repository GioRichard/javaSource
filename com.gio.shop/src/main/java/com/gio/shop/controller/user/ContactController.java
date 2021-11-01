package com.gio.shop.controller.user;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.gio.shop.dto.SimpleContact;
import com.gio.shop.services.CategoriesService;
import com.gio.shop.services.ContactService;


@Controller
public class ContactController extends BaseController {

//	
////	public SimpleContact getCleanSimpleContact() {
////		SimpleContact contact = new SimpleContact();
////		contact.setTxtname("Ha Quoc Phong");
////		contact.setTxtemail("haphong@gmail.com");
////		contact.setTxtsubject("Java Web");
////		contact.setTxtmessage("buoi hoc thu 4");
////		contact.setChkCheckbox(true);
////		return contact;
////	}
//
	@RequestMapping(value = { "/contact" }, method = RequestMethod.GET) // --> action
	public String contact(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		
		SimpleContact contact = new SimpleContact();
		contact.setTxtname("Ha Quoc Phong");
		contact.setTxtemail("haphong@gmail.com");
		contact.setTxtsubject("Java Web");
		contact.setTxtmessage("buoi hoc thu 4");
		model.addAttribute("contact", contact ); //contact
		
		return "user/contact"; // duong dan toi view
	}
	
	@RequestMapping(value = { "/contact" }, method = RequestMethod.POST) // --> action
	public String saveContact(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response,
			@ModelAttribute("contact") SimpleContact contact,
			@RequestParam("inputFile") MultipartFile[] inputFiles)
			throws IOException {
		//lay thong tin nguoi dung day len
		String email = request.getParameter("txtemail");
		String emailFromSpringFrom = contact.getTxtemail();
		//2. luu thong tin vao co so du lieu
		
		
		//thong bao cho ng dung biet d luu thanh cong 
		model.addAttribute("thongbao", "cam on ban " + emailFromSpringFrom +" da gui lien he!");
		model.addAttribute("contact", contact);
		
		//4: save file
		if(inputFiles.length>0) {
			for (MultipartFile inputFile : inputFiles) {
				inputFile.transferTo(new File("D:\\Java\\com.gio.shop\\uploads\\" + inputFile.getOriginalFilename())); 
			}
		}
		
		
		return "user/contact"; // duong dan toi view
	}
	
	@RequestMapping(value = {"/contact-ajax"}, method = RequestMethod.POST)
	public  ResponseEntity<Map<String, Object>> contactAjax(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response,
			final @RequestBody SimpleContact contact){
		System.out.println("contact[Email]: " + contact.getTxtemail());
		
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200); //200 quy uoc la thanh cong //500 la ko thanh cong
		jsonResult.put("message", "save thanh cong " + contact.getTxtemail());
		return ResponseEntity.ok(jsonResult);
	}

}

//@Controller
//public class ContactController extends BaseController {
//	@Autowired
//	private ContactService contactService;
//	
////	public SimpleContact getCleanSimpleContact() {
////		SimpleContact contact = new SimpleContact();
////		contact.setTxtname("Ha Quoc Phong");
////		contact.setTxtemail("haphong@gmail.com");
////		contact.setTxtsubject("Java Web");
////		contact.setTxtmessage("buoi hoc thu 4");
////		contact.setChkCheckbox(true);
////		return contact;
////	}
//
//	@RequestMapping(value = { "/contact" }, method = RequestMethod.GET) // --> action
//	public String contact(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
//			throws IOException {
//		
//		SimpleContact contact = new SimpleContact();
//		contact.setTxtname("Ha Quoc Phong");
//		contact.setTxtemail("haphong@gmail.com");
//		contact.setTxtsubject("Java Web");
//		contact.setTxtmessage("buoi hoc thu 4");
//		model.addAttribute("contact", contact ); //contact
//		
//		return "user/contact"; // duong dan toi view
//	}
//	
//	@RequestMapping(value = { "/contact" }, method = RequestMethod.POST) // --> action
//	public String saveContact(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response,
//			@ModelAttribute("contact") SimpleContact contact,
//			@RequestParam("inputFile") MultipartFile[] inputFiles)
//			throws IOException {
//		//lay thong tin nguoi dung day len
//		String email = request.getParameter("txtemail");
//		String emailFromSpringFrom = contact.getTxtemail();
//		//2. luu thong tin vao co so du lieu
//		
//		contactService.saveContact(contact, inputFiles);
//		
//		//thong bao cho ng dung biet d luu thanh cong 
//		model.addAttribute("thongbao", "cam on ban " + emailFromSpringFrom +" da gui lien he!");
//		model.addAttribute("contact", contact);
//		
//		//4: save file
//		if(inputFiles.length>0) {
//			for (MultipartFile inputFile : inputFiles) {
//				inputFile.transferTo(new File("D:\\Java\\com.gio.shop\\uploads\\" + inputFile.getOriginalFilename())); 
//			}
//		}
//		
//		
//		return "user/contact"; // duong dan toi view
//	}
//	
//	@RequestMapping(value = {"/contact-ajax"}, method = RequestMethod.POST)
//	public  ResponseEntity<Map<String, Object>> contactAjax(final Model model,
//			final HttpServletRequest request,
//			final HttpServletResponse response,
//			final @RequestBody SimpleContact contact){
//		System.out.println("contact[Email]: " + contact.getTxtemail());
//		
//		Map<String, Object> jsonResult = new HashMap<String, Object>();
//		jsonResult.put("code", 200); //200 quy uoc la thanh cong //500 la ko thanh cong
//		jsonResult.put("message", "save thanh cong " + contact.getTxtemail());
//		return ResponseEntity.ok(jsonResult);
//	}
//
//}
