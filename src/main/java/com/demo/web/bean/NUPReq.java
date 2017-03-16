package com.demo.web.bean;

import java.util.UUID;

/**  
* @Title: NOQReq.java
* @Package com.demo.web.bean
* @Description: TODO(新e付交易查询)
* @author wwl 
* @date 2017年2月23日 下午2:19:49
* @version V1.0  
*/
public class NUPReq {
	private String VersionId;
	private String BankId;
	private String MerId;
	private String SendDtTm;
	private String TransId;
	private String Reserve;
	private String AgreeSign;
	private String MobNo;
	private String TrxDtTm;
	private String CstmrNm;
	private String BkAcctTp;
	private String BkAcctNo;
	private String CardCvn2;
	private String CardExprDt;
	private String IdTp;
	private String IdNo;
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
					+ "<AgreeSign>"+AgreeSign+"</AgreeSign>\n"
					+ "<TrxDtTm>"+TrxDtTm+"</TrxDtTm>\n" 
					+ "<CstmrNm>"+CstmrNm+"</CstmrNm>\n"
					+ "<BkAcctTp>"+BkAcctTp+"</BkAcctTp>\n"
					+ "<BkAcctNo>"+BkAcctNo+"</BkAcctNo>\n"
					+ "<CardCvn2>"+CardCvn2+"</CardCvn2>\n"
					+ "<CardExprDt>"+CardExprDt+"</CardExprDt>\n" 
					+ "<IdTp>"+IdTp+"</IdTp>\n"
					+ "<IdNo>"+IdNo+"</IdNo>\n"
					+ "<MobNo>"+MobNo+"</MobNo>\n"
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
	public String getAgreeSign() {
		return AgreeSign;
	}
	public void setAgreeSign(String agreeSign) {
		AgreeSign = agreeSign;
	}
	public String getMobNo() {
		return MobNo;
	}
	public void setMobNo(String mobNo) {
		MobNo = mobNo;
	}
	public String getTrxDtTm() {
		return TrxDtTm;
	}
	public void setTrxDtTm(String trxDtTm) {
		TrxDtTm = trxDtTm;
	}
	public String getCstmrNm() {
		return CstmrNm;
	}
	public void setCstmrNm(String cstmrNm) {
		CstmrNm = cstmrNm;
	}
	public String getBkAcctTp() {
		return BkAcctTp;
	}
	public void setBkAcctTp(String bkAcctTp) {
		BkAcctTp = bkAcctTp;
	}
	public String getBkAcctNo() {
		return BkAcctNo;
	}
	public void setBkAcctNo(String bkAcctNo) {
		BkAcctNo = bkAcctNo;
	}
	public String getCardCvn2() {
		return CardCvn2;
	}
	public void setCardCvn2(String cardCvn2) {
		CardCvn2 = cardCvn2;
	}
	public String getCardExprDt() {
		return CardExprDt;
	}
	public void setCardExprDt(String cardExprDt) {
		CardExprDt = cardExprDt;
	}
	public String getIdTp() {
		return IdTp;
	}
	public void setIdTp(String idTp) {
		IdTp = idTp;
	}
	public String getIdNo() {
		return IdNo;
	}
	public void setIdNo(String idNo) {
		IdNo = idNo;
	}
	
}

