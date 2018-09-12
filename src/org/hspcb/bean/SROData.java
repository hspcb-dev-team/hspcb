package org.hspcb.bean;

public class SROData {

	private String Region ;
	private String Office ;
	private String  Designation ;
	private String App_Rcvd ;
	private String pend_app ;
	private String grant_app ;
	private String rej_app ;
	public String getRegion() {
		return Region;
	}
	public void setRegion(String region) {
		Region = region;
	}
	public String getOffice() {
		return Office;
	}
	public void setOffice(String office) {
		Office = office;
	}
	public String getDesignation() {
		return Designation;
	}
	public void setDesignation(String designation) {
		Designation = designation;
	}
	public String getApp_Rcvd() {
		return App_Rcvd;
	}
	public void setApp_Rcvd(String app_Rcvd) {
		App_Rcvd = app_Rcvd;
	}
	public String getPend_app() {
		return pend_app;
	}
	public void setPend_app(String pend_app) {
		this.pend_app = pend_app;
	}
	public String getGrant_app() {
		return grant_app;
	}
	public void setGrant_app(String grant_app) {
		this.grant_app = grant_app;
	}
	public String getRej_app() {
		return rej_app;
	}
	public void setRej_app(String rej_app) {
		this.rej_app = rej_app;
	}
	
}
