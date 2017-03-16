package com.demo.web.old.bean;

import java.util.UUID;

/**  
* @Title: UCReq.java
* @Package com.demo.web.old.bean
* @Description: TODO(老支付)
* @author wwl 
* @date 2017年3月2日 上午10:26:01
* @version V1.0  
*/
public class QPReq {
	private String version;
	private String transId;
	private String merId;
	private String relatedAcct;
	private String name;
	private String certType;
	private String certNo;
	private String phone;
	private String stageFlag;
	private String stages;
	private String cifFee;
	private String serialNo;
	private String date;
	private String cardNo;
	private String validDate;
	private String cvv2;
	private String charge;
	private String amount;
	private String currency;
	private String goods;
	private String bussType;
	private String tranSource;
	private String feeMode;
	private String clearMerchant;
	private String subMerExtension;
	@Override
	public String toString(){
		return "<MessageSuit><Message id=\"" + UUID.randomUUID() + "\">"
				+ "<Plain id=\""+transId+"\">" 
				+ "<version>"+version+"</version>"
				+ "<transId>"+transId+"</transId>" 
				+ "<merId>"+merId+"</merId>"
				+ "<relatedAcct>"+relatedAcct+"</relatedAcct>"
				+ "<name>"+name+"</name>"
				+ "<certType>"+certType+"</certType>"
				+ "<certNo>"+certNo+"</certNo>"
				+ "<phone>"+phone+"</phone>"
				+ "<stageFlag>"+stageFlag+"</stageFlag>"
				+ "<stages>"+stages+"</stages>"
				+ "<cifFee>"+cifFee+"</cifFee>"
				+ "<serialNo>"+serialNo+"</serialNo>"
				+ "<date>"+date+"</date>" 
				+ "<cardNo>"+cardNo+"</cardNo>"
				+ "<validDate>"+validDate+"</validDate>" 
				+ "<cvv2>"+cvv2+"</cvv2>"
				+ "<charge>"+charge+"</charge>"
				+ "<amount>"+amount+"</amount>"
				+ "<currency>"+currency+"</currency>"
				+ "<goods>"+goods+"</goods>"
				+ "<bussType>"+bussType+"</bussType>"
				+ "<tranSource>"+tranSource+"</tranSource>"
				+ "<feeMode>"+feeMode+"</feeMode>"
				+ "<clearMerchant>"+clearMerchant+"</clearMerchant>"
				+ "<subMerExtension>"+subMerExtension+"</subMerExtension>"
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getStageFlag() {
		return stageFlag;
	}
	public void setStageFlag(String stageFlag) {
		this.stageFlag = stageFlag;
	}
	public String getStages() {
		return stages;
	}
	public void setStages(String stages) {
		this.stages = stages;
	}
	public String getCifFee() {
		return cifFee;
	}
	public void setCifFee(String cifFee) {
		this.cifFee = cifFee;
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
	public String getCharge() {
		return charge;
	}
	public void setCharge(String charge) {
		this.charge = charge;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getCurrency() {
		return currency;
	}
	public void setCurrency(String currency) {
		this.currency = currency;
	}
	public String getGoods() {
		return goods;
	}
	public void setGoods(String goods) {
		this.goods = goods;
	}
	public String getBussType() {
		return bussType;
	}
	public void setBussType(String bussType) {
		this.bussType = bussType;
	}
	public String getTranSource() {
		return tranSource;
	}
	public void setTranSource(String tranSource) {
		this.tranSource = tranSource;
	}
	public String getFeeMode() {
		return feeMode;
	}
	public void setFeeMode(String feeMode) {
		this.feeMode = feeMode;
	}
	public String getClearMerchant() {
		return clearMerchant;
	}
	public void setClearMerchant(String clearMerchant) {
		this.clearMerchant = clearMerchant;
	}
	public String getSubMerExtension() {
		return subMerExtension;
	}
	public void setSubMerExtension(String subMerExtension) {
		this.subMerExtension = subMerExtension;
	}
	
}
