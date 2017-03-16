package com.demo.web.bean;

import java.util.UUID;

/**  
* @Title: NOQReq.java
* @Package com.demo.web.bean
* @Description: TODO(新e付交易签约)
* @author wwl 
* @date 2017年2月23日 下午2:19:49
* @version V1.0  
*/
public class NSRReq {
	private String VersionId;
	private String BankId;
	private String MerId;
	private String SendDtTm;
	private String TransId;
	private String Reserve;
	private String TrxId;
	private String TrxDtTm;
	private String OriTrxId;
	private String OriTrxDt;
	private String RfdTrxAmt;
	private String TrxCcyCd;
	@Override
	public String toString() {
		 return "<MessageSuit><Message id=\"" + UUID.randomUUID() + "\">\n"
				+"<Header>\n"
				+"<VersionId>"+VersionId+"</VersionId>\n"
				+"<BankId>"+BankId+"</BankId>\n"
				+"<MerId>"+MerId+"</MerId>\n"
				+"<SendDtTm>"+SendDtTm+"</SendDtTm>\n"
				+"<TransId>"+TransId+"</TransId>\n"
				+"<Reserve>"+Reserve+"</Reserve>\n"
				+"</Header>\n"
				+ "<Plain id=\""+TransId+"\">\n" 
					+ "<TrxId>"+TrxId+"</TrxId>"
					+ "<TrxDtTm>"+TrxDtTm+"</TrxDtTm>" 
					+ "<OriTrxId>"+OriTrxId+"</OriTrxId>"
					+ "<OriTrxDt>"+OriTrxDt+"</OriTrxDt>"
					+ "<RfdTrxAmt>"+RfdTrxAmt+"</RfdTrxAmt>"
					+ "<TrxCcyCd>"+TrxCcyCd+"</TrxCcyCd>"
				+ "</Plain>\n" 
			+ "</Message>\n" 
			+ "</MessageSuit>\n";
	}
	public String getVersionId() {
		return VersionId;
	}
	public void setVersionId(String versionId) {
		VersionId = versionId;
	}
	public String getBankId() {
		return BankId;
	}
	public void setBankId(String bankId) {
		BankId = bankId;
	}
	public String getMerId() {
		return MerId;
	}
	public void setMerId(String merId) {
		MerId = merId;
	}
	public String getSendDtTm() {
		return SendDtTm;
	}
	public void setSendDtTm(String sendDtTm) {
		SendDtTm = sendDtTm;
	}
	public String getTransId() {
		return TransId;
	}
	public void setTransId(String transId) {
		TransId = transId;
	}
	public String getReserve() {
		return Reserve;
	}
	public void setReserve(String reserve) {
		Reserve = reserve;
	}
	public String getTrxId() {
		return TrxId;
	}
	public void setTrxId(String trxId) {
		TrxId = trxId;
	}
	public String getTrxDtTm() {
		return TrxDtTm;
	}
	public void setTrxDtTm(String trxDtTm) {
		TrxDtTm = trxDtTm;
	}
	public String getOriTrxId() {
		return OriTrxId;
	}
	public void setOriTrxId(String oriTrxId) {
		OriTrxId = oriTrxId;
	}
	public String getOriTrxDt() {
		return OriTrxDt;
	}
	public void setOriTrxDt(String oriTrxDt) {
		OriTrxDt = oriTrxDt;
	}
	public String getRfdTrxAmt() {
		return RfdTrxAmt;
	}
	public void setRfdTrxAmt(String rfdTrxAmt) {
		RfdTrxAmt = rfdTrxAmt;
	}
	public String getTrxCcyCd() {
		return TrxCcyCd;
	}
	public void setTrxCcyCd(String trxCcyCd) {
		TrxCcyCd = trxCcyCd;
	}
	
}

