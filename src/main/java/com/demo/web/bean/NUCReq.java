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
public class NUCReq {
	private String VersionId;
	private String BankId;
	private String MerId;
	private String SendDtTm;
	private String TransId;
	private String Reserve;
	private String BkAcctNo;
	private String MobNo;
	private String PyerAuthMsg;
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
					+ "<BkAcctNo>"+BkAcctNo+"</BkAcctNo>\n"
					+ "<MobNo>"+MobNo+"</MobNo>\n"
					+ "<PyerAuthMsg>"+PyerAuthMsg+"</PyerAuthMsg>\n"
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
	public String getBkAcctNo() {
		return BkAcctNo;
	}
	public void setBkAcctNo(String bkAcctNo) {
		BkAcctNo = bkAcctNo;
	}
	public String getMobNo() {
		return MobNo;
	}
	public void setMobNo(String mobNo) {
		MobNo = mobNo;
	}
	public String getPyerAuthMsg() {
		return PyerAuthMsg;
	}
	public void setPyerAuthMsg(String pyerAuthMsg) {
		PyerAuthMsg = pyerAuthMsg;
	}
	
	
}

