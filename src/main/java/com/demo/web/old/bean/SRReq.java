package com.demo.web.old.bean;

import java.util.UUID;

/**  
* @Title: UCReq.java
* @Package com.demo.web.old.bean
* @Description: TODO(老退货)
* @author wwl 
* @date 2017年3月2日 上午10:26:01
* @version V1.0  
*/
public class SRReq {
	private String version;
	private String transId;
	private String merId;
	private String serialNo;
	private String date;
	private String originalSerialNo;
	private String originalDate;
	private String currency;
	private String amount;
	private String bussType;
	@Override
	public String toString(){
		return "<MessageSuit><Message id=\"" + UUID.randomUUID() + "\">"
				+ "<Plain id=\""+transId+"\">" 
				+ "<version>"+version+"</version>"
				+ "<transId>"+transId+"</transId>" 
				+ "<merId>"+merId+"</merId>"
				+ "<serialNo>"+serialNo+"</serialNo>"
				+ "<date>"+date+"</date>" 
				+ "<originalSerialNo>"+originalSerialNo+"</originalSerialNo>"
				+ "<originalDate>"+originalDate+"</originalDate>"
				+ "<currency>"+currency+"</currency>"
				+ "<amount>"+amount+"</amount>"
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
	public String getSerialNo() {
		return serialNo;
	}
	public void setSerialNo(String serialNo) {
		this.serialNo = serialNo;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getOriginalSerialNo() {
		return originalSerialNo;
	}
	public void setOriginalSerialNo(String originalSerialNo) {
		this.originalSerialNo = originalSerialNo;
	}
	public String getOriginalDate() {
		return originalDate;
	}
	public void setOriginalDate(String originalDate) {
		this.originalDate = originalDate;
	}
	public String getCurrency() {
		return currency;
	}
	public void setCurrency(String currency) {
		this.currency = currency;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getBussType() {
		return bussType;
	}
	public void setBussType(String bussType) {
		this.bussType = bussType;
	}
}
