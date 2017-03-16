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
	SimpleDateFormat s = new SimpleDateFormat("yyyyMMdd HH:mm:ss");
	SimpleDateFormat times = new SimpleDateFormat("yyyyMMddHHmmssSSS");
	Date date = new Date();
	Long time=System.currentTimeMillis();
%>
<% 
	String url = request.getScheme()+"://"+ request.getServerName()+":"+request.getLocalPort()+request.getContextPath();
%>
<body>
	<div align="center">
	<input type=button onclick="window.open('<%=url %>/old/sign.action','_parent')"  value="老签约" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" />
	<input type=button onclick="window.open('<%=url %>/old/pay.action','_parent')"  value="老支付" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" />
	<input type=button onclick="window.open('<%=url %>/old/paySub.action','_parent')"  value="老支付二级" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" />
	<input type=button onclick="window.open('<%=url %>/old/refund.action','_parent')"  value="老退货" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" />
	<input type=button onclick="window.open('<%=url %>/old/query.action','_parent')"  value="老查证" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" />	<h1>老退货</h1>
		<form action="/newEpay/old/refund.action" method="post">
			<p>请求头</p>
			<table
				style="width:670px;background-color: beige; border-width: 2px; margin: auto; padding: 20px;" border="1">
				<tr>
					<td  style="width:37%"><font color="red">*</font>版本</td>
					<td  style="width:27%"><input type="text" name="version" value="1.0.1" /></td>
					<td  style="width:28%">1.0.1</td>
					<td>7</td>
				</tr>
				<tr>
					<td><font color="red">*</font>交易代码</td>
					<td><input type="text" name="transId"  value="SRReq"/></td>
					<td></td>
					<td>10</td>
				</tr>
				<tr>
					<td><font color="red">*</font>商户号</td>
					<td><input type="text" name="merId"  value="800000000000025"/></td>
					<td></td>
					<td>15</td>
				</tr>
				<tr>
					<td>流水号</td>
					<td><input type="text" name="serialNo"  value="<%=times.format(time)%>"/></td>
					<td>yyyyMMddHHmmssSSS</td>
					<td>20</td>
				</tr>
				<tr>
					<td>交易时间</td>
					<td><input type="text" name="date"  value="<%=s.format(time)%>"/></td>
					<td>YYYYMMDD HH:MM:SS</td>
					<td>17</td>
				</tr>
				<tr>
					<td><font color="red">*</font>原商户流水号</td>
					<td><input type="text" name="originalSerialNo" /></td>
					<td></td>
					<td>20</td>
				</tr>
				<tr>
					<td><font color="red">*</font>原商户日期和时间</td>
					<td><input type="text" name="originalDate"/></td>
					<td>YYYYMMDD</td>
					<td>22</td>
				</tr>
				<tr>
					<td>交易货币代码</td>
					<td><input type="text" name="currency" /></td>
					<td>默认为156人民币</td>
					<td>3</td>
				</tr>
				<tr>
					<td>交易金额</td>
					<td><input type="text" name="amount" /></td>
					<td>以元为单位</td>
					<td>12</td>
				</tr>
				<tr>
					<td><font color="red">*</font>业务类型</td>
					<td><input type="text" name="bussType" value="1"/></td>
					<td>1 - 快捷支付 2-协议支付</td>
					<td>1</td>
				</tr>
				<tr>
					<td><font color="red">*</font>请求路径</td>
					<td><input type="text" name="url"
						value="http://195.203.56.35:9080/nep/payAccess.do" /></td>
					<td></td>
					<td></td>
				</tr>
			</table>
			<input type="submit" value="确认" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" />
		</form>
	</div>
</body>
</html>