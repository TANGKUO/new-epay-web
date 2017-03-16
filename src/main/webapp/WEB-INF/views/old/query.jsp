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
	<input type=button onclick="window.open('<%=url %>/old/query.action','_parent')"  value="老查证" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" />	<h1>老查证</h1>
		<form action="/newEpay/old/query.action" method="post">
			<p>请求</p>
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
					<td><input type="text" name="transId"  value="OQReq"/></td>
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
					<td>交易性质</td>
					<td><input type="text" name="type"  value=""/></td>
					<td>1 支付; 2 退货</td>
					<td>1</td>
				</tr>
				<tr>
					<td>原订单日期</td>
					<td><input type="text" name="date"  value=""/></td>
					<td>YYYYMMDD</td>
					<td>8</td>
				</tr>
				<tr>
					<td>原订单号</td>
					<td><input type="text" name="serialNo"  value=""/></td>
					<td>yyyyMMddHHmmssSSS</td>
					<td>20</td>
				</tr>
				<tr>
					<td><font color="red">*</font>请求路径</td>
					<td><input type="text" name="url"
						value="http://195.203.56.35:9080/nep/connect.do" /></td>
					<td></td>
					<td></td>
				</tr>
			</table>
			<input type="submit" value="确认" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" />
		</form>
	</div>
</body>
</html>