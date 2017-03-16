package com.demo.web.old.bean;

import java.util.UUID;

/**  
* @Title: UCReq.java
* @Package com.demo.web.old.bean
* @Description: TODO(老签约)
* @author wwl 
* @date 2017年3月2日 上午10:26:01
* @version V1.0  
*/
public class UCReq {
	private String version;
	private String transId;
	private String merId;
	private String relatedAcct;
	private String date;
	private String name;
	private String cardNo;
	private String validDate;
	private String cvv2;
	private String certType;
	private String certNo;
	private String phone;
	private String bussType;
	@Override
	public String toString(){
		return "<MessageSuit><Message id=\"" + UUID.randomUUID() + "\">"
				+ "<Plain id=\""+transId+"\">" 
				+ "<version>"+version+"</version>"
				+ "<transId>"+transId+"</transId>" 
				+ "<merId>"+merId+"</merId>"
				+ "<relatedAcct>"+relatedAcct+"</relatedAcct>"
				+ "<date>"+date+"</date>" 
				+ "<name>"+name+"</name>"
				+ "<cardNo>"+cardNo+"</cardNo>"
				+ "<validDate>"+validDate+"</validDate>" 
				+ "<cvv2>"+cvv2+"</cvv2>"
				+ "<certType>"+certType+"</certType>"
				+ "<certNo>"+certNo+"</certNo>"
				+ "<phone>"+phone+"</phone>" 
				+ "<bussType>"+bussType+"</bussType>"
				+ "</Plain></Message></MessageSuit>";
	}
	public String getVersion() {
		return version;
	}
	public void setVersion(String version) {
		this.version = version;
	}
	public String getTransId() {
		return transId;
	}
	public void setTransId(String transId) {
		this.transId = transId;
	}
	public String getMerId() {
		return merId;
	}
	public void setMerId(String merId) {
		this.merId = merId;
	}
	public String getRelatedAcct() {
		return relatedAcct;
	}
	public void setRelatedAcct(String relatedAcct) {
		this.relatedAcct = relatedAcct;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCardNo() {
		return cardNo;
	}
	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}
	public String getValidDate() {
		return validDate;
	}
	public void setValidDate(String validDate) {
		this.validDate = validDate;
	}
	public String getCvv2() {
		return cvv2;
	}
	public void setCvv2(String cvv2) {
		this.cvv2 = cvv2;
	}
	public String getCertType() {
		return certType;
	}
	public void setCertType(String certType) {
		this.certType = certType;
	}
	public String getCertNo() {
		return certNo;
	}
	public void setCertNo(String certNo) {
		this.certNo = certNo;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getBussType() {
		return bussType;
	}
	public void setBussType(String bussType) {
		this.bussType = bussType;
	}
}
