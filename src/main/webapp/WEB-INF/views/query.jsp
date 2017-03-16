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
	<input type=button onclick="window.open('<%=url %>/epay/pay.action','_parent')"  value="支付" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" />
	<input type=button onclick="window.open('<%=url %>/epay/refund.action','_parent')"  value="退货" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" />
		<h1>查证</h1>
		<form action="/newEpay/epay/query.action" method="post">
			<p>请求头</p>
			<table
				style="width:670px;background-color: beige; border-width: 2px; margin: auto; padding: 20px;" border="1">
				<tr>
					<td  style="width:37%"><font color="red">*</font>版本</td>
					<td  style="width:27%"><input type="text" name="VersionId" value="3.0.0" /></td>
					<td  style="width:28%">3.0.0</td>
					<td>5</td>
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
					<td><input type="text" name="TransId"  value="NOQReq"/></td>
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
					<td  style="width:28%"></td>
					<td>20</td>
				</tr>
				<tr>
					<td><font color="red">*</font>交易时间</td>
					<td><input type="text" name="TrxDtTm"  value="<%=s.format(time)%>"/></td>
					<td>yyyy-MM-dd'T'HH:mm:ss</td>
					<td>19</td>
				</tr>
				<tr>
					<td><font color="red">*</font>原交易流水号</td>
					<td><input type="text" name="OriTrxId"/></td>
					<td>长度小于等于20</td>
					<td>20</td>
				</tr>
				<tr>
					<td><font color="red">*</font>原交易日期</td>
					<td><input type="text" name="OriTrxDt" /></td>
					<td>yyyy-MM-dd</td>
					<td>10</td>
				</tr>
				<tr>
					<td><font color="red">*</font>请求路径</td>
					<td><input type="text" name="url"
						value="http://195.203.56.35:9080/nep/newPay.do" /></td>
					<td></td>
					<td></td>
				</tr>
			</table>
			<input type="submit" value="确认" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" />
		</form>
	</div>
</body>
</html>