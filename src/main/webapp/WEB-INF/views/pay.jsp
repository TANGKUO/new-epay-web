<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新e付</title>
</head>
<%
	SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
	SimpleDateFormat times = new SimpleDateFormat("yyyyMMddHHmmssSSS");
	Date date = new Date();
	Long time=System.currentTimeMillis();
%>
<% String url = request.getScheme()+"://"+ request.getServerName()+":"+request.getLocalPort()+request.getContextPath(); %>
<body>
	<div align="center">
	<input type=button onclick="window.open('<%=url %>/epay/signFirst.action','_parent')"  value="签约1" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" />
	<input type=button onclick="window.open('<%=url %>/epay/signSecond.action','_parent')"  value="签约2" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" />
	<input type=button onclick="window.open('<%=url %>/epay/signCancel.action','_parent')"  value="解约" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" />
	<input type=button onclick="window.open('<%=url %>/epay/refund.action','_parent')"  value="退货" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" />
	<input type=button onclick="window.open('<%=url %>/epay/query.action','_parent')"  value="查证" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" />
		<h1>支付</h1>
		<form action="/newEpay/epay/pay.action" method="post">
			<p>请求头</p>
			<table
				style="width:670px;background-color: beige; border-width: 2px; margin: auto; padding: 20px;" border="1">
				<tr>
					<td  style="width:36%"><font color="red">*</font>版本</td>
					<td  style="width:27%"><input type="text" name="VersionId" value="3.0.0" /></td>
					<td  style="width:29%">3.0.0</td>
					<td  style="width:8%">5</td>
				</tr>
				<tr>
					<td><font color="red">*</font>银行机构标识</td>
					<td><input type="text" name="BankId"  value="0305"/></td>
					<td>银行编号</td>
					<td>14</td>
				</tr>
				<tr>
					<td><font color="red">*</font>商户机构标识</td>
					<td><input type="text" name="MerId"  value="800000000000025"/></td>
					<td>商户机构标识</td>
					<td>20</td>
				</tr>
				<tr>
					<td><font color="red">*</font>请求日期</td>
					<td><input type="text" name="SendDtTm"  value="<%=s.format(time)%>"/></td>
					<td>yyyy-MM-dd'T'HH:mm:ss</td>
					<td>17</td>
				</tr>
				<tr>
					<td><font color="red">*</font>交易代码</td>
					<td><input type="text" name="TransId"  value="NQPReq"/></td>
					<td>交易代码</td>
					<td>10</td>
				</tr>
				<tr>
					<td>预留字段</td>
					<td><input type="text" name="Reserve" /></td>
					<td></td>
					<td>200</td>
				</tr>
				</table>
				<p>请求体</p>
				<table
				style="width:670px;background-color: beige; border-width: 2px; margin: auto; padding: 20px;" border="1">
				<tr>
					<td  style="width:37%"><font color="red">*</font>交易流水号</td>
					<td  style="width:27%"><input type="text" name="TrxId" value="<%=times.format(time)+"00"%>"/></td>
					<td  style="width:28%">yyyymmddhhssmmXXXX</td>
					<td  style="width:8%">20</td>
				</tr>
				<tr>
					<td><font color="red">*</font>交易时间</td>
					<td><input type="text" name="TrxDtTm"  value="<%=s.format(time)%>"/></td>
					<td>yyyy-MM-dd'T'HH:mm:ss</td>
					<td>19</td>
				</tr>
				<tr>
					<td><font color="red">*</font>交易金额</td>
					<td><input type="text" name="TrxAmt" value="1"/></td>
					<td>以分为单位</td>
					<td>15</td>
				</tr>
				<tr>
					<td><font color="red">*</font>分期标志</td>
					<td><input type="text" name="StageFlag" value="0"/></td>
					<td>0->非分期 1->分期</td>
					<td>1</td>
				</tr>
				<tr>
					<td>分期期数</td>
					<td><input type="text" name="Stages" /></td>
					<td>分期标志为 1 时,非空<br/> 3-6-9-12-24期</td>
					<td>4</td>
				</tr>
				<tr>
					<td><font color="red">*</font>交易货币代码</td>
					<td><input type="text" name="TrxCcyCd" value="156" /></td>
					<td>目前仅支持：156</td>
					<td>3</td>
				</tr>
				<tr>
					<td><font color="red">*</font>交易类型</td>
					<td><input type="text" name="TrxTp" value="1000"/></td>
					<td>1000–消费</td>
					<td>4</td>
				</tr>
				<tr>
					<td><font color="red">*</font>签约协议号</td>
					<td><input type="text" name="SgnNo" value="4218700000007422"/></td>
					<td></td>
					<td>34</td>
				</tr>
				<tr>
					<td colspan="4" align="center">-----付款方信息-----</td>
				</tr>
				<tr>
					<td><font color="red">*</font>--付款方名称</td>
					<td><input type="text" name="PyerNm" /></td>
					<td></td>
					<td>60</td>
				</tr>
				<tr>
					<td><font color="red">*</font>--付款方账户</td>
					<td><input type="text" name="PyerAcctId" /></td>
					<td></td>
					<td>34</td>
				</tr>
				<tr>
					<td><font color="red">*</font>--付款方账户类型</td>
					<td><input type="text" name="PyerAcctTp" value="1" /></td>
					<td>1–银行贷记账户</td>
					<td>1</td>
				</tr>
				<tr>
					<td><font color="red">*</font>--付款方账户所属机构标识</td>
					<td><input type="text" name="PyerAcctIssrId" /></td>
					<td></td>
					<td>14</td>
				</tr>
				<tr>
					<td>--付款方交易终端类型</td>
					<td><input type="text" name="PyerTrxTrmTp" /></td>
					<td>00 – 电脑；<br/>
						01 – 手机；<br/>
						02 – 平板设备；<br/>
						03 – 可穿戴设备；<br/>
						04 – 数字电视；<br/>
						99 – 其他</td>
					<td>2</td>
				</tr>
				<tr>
					<td>--付款方交易终端编码</td>
					<td><input type="text" name="PyerTrxTrmNo" /></td>
					<td></td>
					<td>32</td>
				</tr>
				<tr>
					<td colspan="4" align="center">-----收款方信息-----</td>
				</tr>
				<tr>
					<td><font color="red">*</font>--收款方名</td>
					<td><input type="text" name="PyeeNm" /></td>
					<td></td>
					<td>60</td>
				</tr>
				<tr>
					<td><font color="red">*</font>--收款方账户</td>
					<td><input type="text" name="PyeeAcctId" /></td>
					<td></td>
					<td>34</td>
				</tr>
				<tr>
					<td><font color="red">*</font>--收款方账户类型</td>
					<td><input type="text" name="PyeeAcctTp" /></td>
					<td>0 – 银行借记账户；<br/>
						1 – 银行贷记账户；<br/>
						2 – 银行准贷记账户；<br/>
						3 – 支付账户</td>
					<td>1</td>
				</tr>
				<tr>
					<td><font color="red">*</font>--收款方账户所属机构标识</td>
					<td><input type="text" name="PyeeAcctIssrId" /></td>
					<td></td>
					<td>14</td>
				</tr>
				<tr>
					<td>--收款方国家编码</td>
					<td><input type="text" name="PyeeCtryNo" /></td>
					<td></td>
					<td>2</td>
				</tr>
				<tr>
					<td>--收款方地区编码</td>
					<td><input type="text" name="PyeeAreaNo" /></td>
					<td></td>
					<td>5</td>
				</tr>
				<tr>
					<td>--收单机构标识</td>
					<td><input type="text" name="AcqrrId" /></td>
					<td></td>
					<td>14</td>
				</tr>
				<tr>
					<td>--收款方交易终端类型</td>
					<td><input type="text" name="PyeeTrxTrmTp" /></td>
					<td>00 – 电脑；<br/>
						01 – 手机；<br/>
						02 – 平板设备；<br/>
						03 – 可穿戴设备；<br/>
						04 – 数字电视；<br/>
						99 – 其他。</td>
					<td>2</td>
				</tr>
				<tr>
					<td>--收款方交易终端编码</td>
					<td><input type="text" name="PyeeTrxTrmNo" /></td>
					<td></td>
					<td>32</td>
				</tr>
				<tr>
					<td colspan="4" align="center">-----商户信息-----</td>
				</tr>
				<tr>
					<td><font color="red">*</font>--商户名称</td>
					<td><input type="text" name="MrchntNm" /></td>
					<td></td>
					<td>128</td>
				</tr>
				<tr>
					<td><font color="red">*</font>--商户编码</td>
					<td><input type="text" name="MrchntNo" /></td>
					<td></td>
					<td>34</td>
				</tr>
				<tr>
					<td><font color="red">*</font>--商户类型</td>
					<td><input type="text" name="MrchntTp" /></td>
					<td>1 – 法人；<br/>
						2 – 其他组织；<br/>
						3 – 个体工商户；<br/>
						4 – 自然人。</td>
					<td>1</td>
				</tr>
				<tr>
					<td><font color="red">*</font>--商户证件类型</td>
					<td><input type="text" name="MrchntCertTp" /></td>
					<td></td>
					<td>2</td>
				</tr>
				<tr>
					<td><font color="red">*</font>--商户证件编码</td>
					<td><input type="text" name="MrchntCertId" /></td>
					<td></td>
					<td>32</td>
				</tr>
				<tr>
					<td><font color="red">*</font>--商户行业类别</td>
					<td><input type="text" name="MrchntCtgyCd" /></td>
					<td></td>
					<td>4</td>
				</tr>
				<tr>
					<td>--网络交易平台名称</td>
					<td><input type="text" name="MrchntPltfrmNm" /></td>
					<td></td>
					<td>128</td>
				</tr>
				<tr>
					<td colspan="4" align="center">-----订单信息-----</td>
				</tr>
				<tr>
					<td><font color="red">*</font>--订单编码</td>
					<td><input type="text" name="OrdrId" /></td>
					<td></td>
					<td>35</td>
				</tr>
				<tr>
					<td><font color="red">*</font>--订单详情</td>
					<td><input type="text" name="OrdrDesc" /></td>
					<td></td>
					<td>128</td>
				</tr>
				<tr>
					<td colspan="4" align="center">-----备付金信息-----</td>
				</tr>
				<tr>
					<td>--非银行支付机构标识</td>
					<td><input type="text" name="InstgId" /></td>
					<td></td>
					<td>14</td>
				</tr>
				<tr>
					<td>--非银行支付机构备付金账户</td>
					<td><input type="text" name="InstgAcctId" /></td>
					<td></td>
					<td>34</td>
				</tr>
				<tr>
					<td>--备付金账户所属机构标识</td>
					<td><input type="text" name="InstgAcctIssrId" /></td>
					<td></td>
					<td>14</td>
				</tr>
				<tr>
					<td colspan="4" align="center">-----二级商户信息-----</td>
				</tr>
				<tr>
					<td>二级商户扩展信息</td>
					<td><input type="text" name="SubMerExtension" /></td>
					<td></td>
					<td>80</td>
				</tr>
				<tr>
					<td>二级商户号</td>
					<td><input type="text" name="SubId" /></td>
					<td></td>
					<td>50</td>
				</tr>
				<tr>
					<td>二级商户名称</td>
					<td><input type="text" name="SubName" /></td>
					<td></td>
					<td>300</td>
				</tr>
				<tr>
					<td>二级商户商品信息</td>
					<td><input type="text" name="SubProInfo" /></td>
					<td></td>
					<td>300</td>
				</tr>
				<tr>
					<td>二级商户商品描述</td>
					<td><input type="text" name="SubProDes" /></td>
					<td></td>
					<td>300</td>
				</tr>
				<tr>
					<td><font color="red">*</font>请求路径</td>
					<td><input type="text" name="url"
						value="http://195.203.56.35:9080/nep/newPay.do" /></td>
					<td></td>
				</tr>
			</table>
			<input type="submit" value="确认" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" />
		</form>
	</div>
</body>
</html>