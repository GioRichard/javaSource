package com.gio.shop.dto;

public class SimpleContact {
//	bat buoc phai trung ten the input html
	private String txtemail;
	private String txtname;
	private String txtsubject;
	private String txtmessage;
	private boolean chkCheckbox;

//	phai tao method , setter, getter
	public String getTxtemail() {
		return txtemail;
	}

	public void setTxtemail(String txtemail) {
		this.txtemail = txtemail;
	}

	public String getTxtname() {
		return txtname;
	}

	public void setTxtname(String txtname) {
		this.txtname = txtname;
	}

	public String getTxtsubject() {
		return txtsubject;
	}

	public void setTxtsubject(String txtsubject) {
		this.txtsubject = txtsubject;
	}

	public String getTxtmessage() {
		return txtmessage;
	}

	public void setTxtmessage(String txtmessage) {
		this.txtmessage = txtmessage;
		
	}

	public boolean isChkCheckbox() {
		return chkCheckbox;
	}

	public void setChkCheckbox(boolean chkCheckbox) {
		this.chkCheckbox = chkCheckbox;
	}
	

	
}
