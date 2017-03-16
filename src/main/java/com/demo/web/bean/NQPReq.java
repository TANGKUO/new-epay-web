package com.demo.web.bean;

import java.util.UUID;

/**  
* @Title: NOQReq.java
* @Package com.demo.web.bean
* @Description: TODO(新e付交易支付)
* @author wwl 
* @date 2017年2月23日 下午2:19:49
* @version V1.0  
*/
public class NQPReq {
	private String VersionId;
	private String BankId;
	private String MerId;
	private String SendDtTm;
	private String TransId;
	private String Reserve;
	private String TrxId;
	private String TrxDtTm;
	private String TrxAmt;
	private String StageFlag;
	private String Stages;
	private String TrxCcyCd;
	private String TrxTp;
	private String SgnNo;
	private String PyerNm;
	private String PyerAcctId;
	private String PyerAcctTp;
	private String PyerAcctIssrId;
	private String PyerTrxTrmTp;
	private String PyerTrxTrmNo;
	private String CardCvn2;
	private String CardExprDt;
	private String PyeeNm;
	private String PyeeAcctId;
	private String PyeeAcctTp;
	private String PyeeAcctIssrId;			
	 private String PyeeCtryNo;			
	 private String PyeeAreaNo;			
	 private String AcqrrId;			
	 private String PyeeTrxTrmTp;			
	 private String PyeeTrxTrmNo;			
	 private String MrchntNm;			
	 private String MrchntNo;			
	 private String MrchntTp;			
	 private String MrchntCertTp;			
	 private String MrchntCertId;			
	 private String MrchntCtgyCd;			
	 private String MrchntPltfrmNm;			
	 private String OrdrId;			
	 private String OrdrDesc;			
	 private String InstgId;			
	 private String InstgAcctId;			
	 private String InstgAcctIssrId;			
	 private String SubMerExtension;			
	 private String SubId;			
	 private String SubName;			
	 private String SubProInfo;			
	 private String SubProDes;
	@Override
	public String toString()
	  {
	    return "<MessageSuit><Message id=\"" + UUID.randomUUID() + "\">\n" 
	    		+ "<Header>\n" 
	    			+ "<VersionId>" + this.VersionId + "</VersionId>\n" 
	    			+ "<BankId>" + this.BankId + "</BankId>\n" 
	    			+ "<MerId>" + this.MerId + "</MerId>\n" 
	    			+ "<SendDtTm>" + this.SendDtTm + "</SendDtTm>\n" 
	    			+ "<TransId>" + this.TransId + "</TransId>\n" 
	    			+ "<Reserve>" + this.Reserve + "</Reserve>\n" 
	    		+ "</Header>\n" 
	    		+ "<Plain id=\"" + this.TransId + "\">\n" 
	    			+ "<TrxId>" + this.TrxId + "</TrxId>" 
	    			+ "<TrxDtTm>" + this.TrxDtTm + "</TrxDtTm>" 
	    			+ "<TrxAmt>" + this.TrxAmt + "</TrxAmt>" 
	    			+ "<StageFlag>" + this.StageFlag + "</StageFlag>"
	    			+ "<Stages>" + this.Stages + "</Stages>" 
	    			+ "<TrxCcyCd>" + this.TrxCcyCd + "</TrxCcyCd>" 
	    			+ "<TrxTp>" + this.TrxTp + "</TrxTp>" 
	    			+ "<SgnNo>" + this.SgnNo + "</SgnNo>" 
	    			+ "<PyerInfo>" 
	    				+ "<PyerNm>" + this.PyerNm + "</PyerNm>"
	    				+ "<PyerAcctId>" + this.PyerAcctId + "</PyerAcctId>" 
	    				+ "<PyerAcctTp>" + this.PyerAcctTp + "</PyerAcctTp>"
	    				+ "<PyerAcctIssrId>" + this.PyerAcctIssrId + "</PyerAcctIssrId>" 
	    				+ "<PyerTrxTrmTp>" + this.PyerTrxTrmTp + "</PyerTrxTrmTp>" 
	    				+ "<PyerTrxTrmNo>" + this.PyerTrxTrmNo + "</PyerTrxTrmNo>" 
	    			+ "</PyerInfo>"
//	    			+ "<CardCvn2>" + this.CardCvn2 + "</CardCvn2>" 
//	    			+ "<CardExprDt>" + this.CardExprDt + "</CardExprDt>" 
	    			+ "<PyeeInfo>" 
	    				+ "<PyeeNm>" + this.PyeeNm + "</PyeeNm>" 
	    				+ "<PyeeAcctId>" + this.PyeeAcctId + "</PyeeAcctId>" 
	    				+ "<PyeeAcctTp>" + this.PyeeAcctTp + "</PyeeAcctTp>" 
	    				+ "<PyeeAcctIssrId>" + this.PyeeAcctIssrId + "</PyeeAcctIssrId>" 
	    				+ "<PyeeCtryNo>" + this.PyeeCtryNo + "</PyeeCtryNo>" 
	    				+ "<PyeeAreaNo>" + this.PyeeAreaNo + "</PyeeAreaNo>" 
	    				+ "<AcqrrId>" + this.AcqrrId + "</AcqrrId>" 
	    				+ "<PyeeTrxTrmTp>" + this.PyeeTrxTrmTp + "</PyeeTrxTrmTp>" 
	    				+ "<PyeeTrxTrmNo>" + this.PyeeTrxTrmNo + "</PyeeTrxTrmNo>" 
	    			+ "</PyeeInfo>" 
	    			+ "<MrchntInfo>" 
	    				+ "<MrchntNm>" + this.MrchntNm + "</MrchntNm>" 
	    				+ "<MrchntNo>" + this.MrchntNo + "</MrchntNo>" 
	    				+ "<MrchntTp>" + this.MrchntTp + "</MrchntTp>"
	    				+ "<MrchntCertTp>" + this.MrchntCertTp + "</MrchntCertTp>" 
	    				+ "<MrchntCertId>" + this.MrchntCertId + "</MrchntCertId>"
	    				+ "<MrchntCtgyCd>" + this.MrchntCtgyCd + "</MrchntCtgyCd>" 
	    				+ "<MrchntPltfrmNm>" + this.MrchntPltfrmNm + "</MrchntPltfrmNm>" 
	    			+ "</MrchntInfo>" 
	    			+ "<OrdrInfo>" 
	    				+ "<OrdrId>" + this.OrdrId + "</OrdrId>" 
	    				+ "<OrdrDesc>" + this.OrdrDesc + "</OrdrDesc>" 
	    			+ "</OrdrInfo>" 
	    			+ "<InstgInfo>" 
	    				+ "<InstgId>" + this.InstgId + "</InstgId>" 
	    				+ "<InstgAcctId>" + this.InstgAcctId + "</InstgAcctId>" 
	    				+ "<InstgAcctIssrId>" + this.InstgAcctIssrId + "</InstgAcctIssrId>"
	    			+ "</InstgInfo>" 
	    			+ "<SubMerExtension>" + this.SubMerExtension + "</SubMerExtension>" 
	    			+ "<SubId>" + this.SubId + "</SubId>" 
	    			+ "<SubName>" + this.SubName + "</SubName>" 
	    			+ "<SubProInfo>" + this.SubProInfo + "</SubProInfo>" 
	    			+ "<SubProDes>" + this.SubProDes + "</SubProDes>" 
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
	public String getTrxAmt() {
		return TrxAmt;
	}
	public void setTrxAmt(String trxAmt) {
		TrxAmt = trxAmt;
	}
	public String getStageFlag() {
		return StageFlag;
	}
	public void setStageFlag(String stageFlag) {
		StageFlag = stageFlag;
	}
	public String getStages() {
		return Stages;
	}
	public void setStages(String stages) {
		Stages = stages;
	}
	public String getTrxCcyCd() {
		return TrxCcyCd;
	}
	public void setTrxCcyCd(String trxCcyCd) {
		TrxCcyCd = trxCcyCd;
	}
	public String getTrxTp() {
		return TrxTp;
	}
	public void setTrxTp(String trxTp) {
		TrxTp = trxTp;
	}
	public String getSgnNo() {
		return SgnNo;
	}
	public void setSgnNo(String sgnNo) {
		SgnNo = sgnNo;
	}
	public String getPyerNm() {
		return PyerNm;
	}
	public void setPyerNm(String pyerNm) {
		PyerNm = pyerNm;
	}
	public String getPyerAcctId() {
		return PyerAcctId;
	}
	public void setPyerAcctId(String pyerAcctId) {
		PyerAcctId = pyerAcctId;
	}
	public String getPyerAcctTp() {
		return PyerAcctTp;
	}
	public void setPyerAcctTp(String pyerAcctTp) {
		PyerAcctTp = pyerAcctTp;
	}
	public String getPyerAcctIssrId() {
		return PyerAcctIssrId;
	}
	public void setPyerAcctIssrId(String pyerAcctIssrId) {
		PyerAcctIssrId = pyerAcctIssrId;
	}
	public String getPyerTrxTrmTp() {
		return PyerTrxTrmTp;
	}
	public void setPyerTrxTrmTp(String pyerTrxTrmTp) {
		PyerTrxTrmTp = pyerTrxTrmTp;
	}
	public String getPyerTrxTrmNo() {
		return PyerTrxTrmNo;
	}
	public void setPyerTrxTrmNo(String pyerTrxTrmNo) {
		PyerTrxTrmNo = pyerTrxTrmNo;
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
	public String getPyeeNm() {
		return PyeeNm;
	}
	public void setPyeeNm(String pyeeNm) {
		PyeeNm = pyeeNm;
	}
	public String getPyeeAcctId() {
		return PyeeAcctId;
	}
	public void setPyeeAcctId(String pyeeAcctId) {
		PyeeAcctId = pyeeAcctId;
	}
	public String getPyeeAcctTp() {
		return PyeeAcctTp;
	}
	public void setPyeeAcctTp(String pyeeAcctTp) {
		PyeeAcctTp = pyeeAcctTp;
	}
	public String getPyeeAcctIssrId() {
		return PyeeAcctIssrId;
	}
	public void setPyeeAcctIssrId(String pyeeAcctIssrId) {
		PyeeAcctIssrId = pyeeAcctIssrId;
	}
	public String getPyeeCtryNo() {
		return PyeeCtryNo;
	}
	public void setPyeeCtryNo(String pyeeCtryNo) {
		PyeeCtryNo = pyeeCtryNo;
	}
	public String getPyeeAreaNo() {
		return PyeeAreaNo;
	}
	public void setPyeeAreaNo(String pyeeAreaNo) {
		PyeeAreaNo = pyeeAreaNo;
	}
	public String getAcqrrId() {
		return AcqrrId;
	}
	public void setAcqrrId(String acqrrId) {
		AcqrrId = acqrrId;
	}
	public String getPyeeTrxTrmTp() {
		return PyeeTrxTrmTp;
	}
	public void setPyeeTrxTrmTp(String pyeeTrxTrmTp) {
		PyeeTrxTrmTp = pyeeTrxTrmTp;
	}
	public String getPyeeTrxTrmNo() {
		return PyeeTrxTrmNo;
	}
	public void setPyeeTrxTrmNo(String pyeeTrxTrmNo) {
		PyeeTrxTrmNo = pyeeTrxTrmNo;
	}
	public String getMrchntNm() {
		return MrchntNm;
	}
	public void setMrchntNm(String mrchntNm) {
		MrchntNm = mrchntNm;
	}
	public String getMrchntNo() {
		return MrchntNo;
	}
	public void setMrchntNo(String mrchntNo) {
		MrchntNo = mrchntNo;
	}
	public String getMrchntTp() {
		return MrchntTp;
	}
	public void setMrchntTp(String mrchntTp) {
		MrchntTp = mrchntTp;
	}
	public String getMrchntCertTp() {
		return MrchntCertTp;
	}
	public void setMrchntCertTp(String mrchntCertTp) {
		MrchntCertTp = mrchntCertTp;
	}
	public String getMrchntCertId() {
		return MrchntCertId;
	}
	public void setMrchntCertId(String mrchntCertId) {
		MrchntCertId = mrchntCertId;
	}
	public String getMrchntCtgyCd() {
		return MrchntCtgyCd;
	}
	public void setMrchntCtgyCd(String mrchntCtgyCd) {
		MrchntCtgyCd = mrchntCtgyCd;
	}
	public String getMrchntPltfrmNm() {
		return MrchntPltfrmNm;
	}
	public void setMrchntPltfrmNm(String mrchntPltfrmNm) {
		MrchntPltfrmNm = mrchntPltfrmNm;
	}
	public String getOrdrId() {
		return OrdrId;
	}
	public void setOrdrId(String ordrId) {
		OrdrId = ordrId;
	}
	public String getOrdrDesc() {
		return OrdrDesc;
	}
	public void setOrdrDesc(String ordrDesc) {
		OrdrDesc = ordrDesc;
	}
	public String getInstgId() {
		return InstgId;
	}
	public void setInstgId(String instgId) {
		InstgId = instgId;
	}
	public String getInstgAcctId() {
		return InstgAcctId;
	}
	public void setInstgAcctId(String instgAcctId) {
		InstgAcctId = instgAcctId;
	}
	public String getInstgAcctIssrId() {
		return InstgAcctIssrId;
	}
	public void setInstgAcctIssrId(String instgAcctIssrId) {
		InstgAcctIssrId = instgAcctIssrId;
	}
	public String getSubMerExtension() {
		return SubMerExtension;
	}
	public void setSubMerExtension(String subMerExtension) {
		SubMerExtension = subMerExtension;
	}
	public String getSubId() {
		return SubId;
	}
	public void setSubId(String subId) {
		SubId = subId;
	}
	public String getSubName() {
		return SubName;
	}
	public void setSubName(String subName) {
		SubName = subName;
	}
	public String getSubProInfo() {
		return SubProInfo;
	}
	public void setSubProInfo(String subProInfo) {
		SubProInfo = subProInfo;
	}
	public String getSubProDes() {
		return SubProDes;
	}
	public void setSubProDes(String subProDes) {
		SubProDes = subProDes;
	}
	
	
}

