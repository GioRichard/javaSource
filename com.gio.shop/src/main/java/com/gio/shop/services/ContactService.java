package com.gio.shop.services;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.gio.shop.entities.Contact;

@Service
public class ContactService extends BaseService<Contact> {
	@Override
	protected Class<Contact> clazz() {
		return Contact.class;
	}
	
	@Transactional
	public void saveContact(Contact contact,MultipartFile[] inputFiles) throws Exception {
		
		super.saveOrupdate(contact);
		
	}
}
