package com.demo.web.old.bean;

import java.util.UUID;

/**  
* @Title: UCReq.java
* @Package com.demo.web.old.bean
* @Description: TODO(老查证)
* @author wwl 
* @date 2017年3月2日 上午10:26:01
* @version V1.0  
*/
public class OQReq {
	private String version;
	private String transId;
	private String merId;
	private String date;
	private String type;
	private String serialNo;
	@Override
	public String toString(){
		return "<MessageSuit><Message id=\"" + UUID.randomUUID() + "\">"
				+ "<Plain id=\""+transId+"\">" 
				+ "<version>"+version+"</version>"
				+ "<transId>"+transId+"</transId>" 
				+ "<merId>"+merId+"</merId>"
				+ "<date>"+date+"</date>" 
				+ "<type>"+type+"</type>" 
				+ "<serialNo>"+serialNo+"</serialNo>"
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
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getSerialNo() {
		return serialNo;
	}
	public void setSerialNo(String serialNo) {
		this.serialNo = serialNo;
	}
	
}
