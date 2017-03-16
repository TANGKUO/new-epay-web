<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新E付测试平台</title>
</head>
<% String url = request.getScheme()+"://"+ request.getServerName()+":"+request.getLocalPort()+request.getContextPath(); %>
<body align="center">
	<div align="center">
		<h1>新E付测试平台</h1>
		<table align="center" border="1">
			<tr align="center">
				<td style="background: beige;width:300px;font: normal 30px arial" >新接口测试</td>
				<td style="background: beige;width:300px;font: normal 30px arial" >老接口测试</td>
			</tr>
			<tr align="center">
				<td style="background: beige;width:300px;">
					<input type=button onclick="window.open('<%=url %>/epay/signFirst.action','_parent')"  value="签约1" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" /><br/>
				</td>
				<td style="background: beige;width:300px;">
					<input type=button onclick="window.open('<%=url %>/old/sign.action','_parent')"  value="老签约" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" /><br/>
				</td>
			</tr>
			<tr align="center">
				<td style="background: beige;width:300px;">
					<input type=button onclick="window.open('<%=url %>/epay/signSecond.action','_parent')"  value="签约2" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" /><br/>
				</td>
				<td style="background: beige;width:300px;">
				</td>
			</tr>
			<tr align="center">
				<td style="background: beige;width:300px;">
					<input type=button onclick="window.open('<%=url %>/epay/signCancel.action','_parent')"  value="解约" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" /><br/>
				</td>
				<td style="background: beige;width:300px;">
					<input type=button onclick="window.open('<%=url %>/old/paySub.action','_parent')"  value="老支付二级" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" /><br/>
				</td>
			</tr>
			<tr align="center">
				<td style="background: beige;width:300px;">
					<input type=button onclick="window.open('<%=url %>/epay/pay.action','_parent')"  value="支付" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" /><br/>
				</td>
				<td style="background: beige;width:300px;">
					<input type=button onclick="window.open('<%=url %>/old/pay.action','_parent')"  value="老支付" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" /><br/>
				</td>
			</tr>
			<tr align="center">
				<td style="background: beige;width:300px;">
					<input type=button onclick="window.open('<%=url %>/epay/refund.action','_parent')"  value="退货" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" /><br/>
				</td>
				<td style="background: beige;width:300px;">
					<input type=button onclick="window.open('<%=url %>/old/refund.action','_parent')"  value="老退货" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" /><br/>
				</td>
			</tr>
			<tr align="center">
				<td style="background: beige;width:300px;">
					<input type=button onclick="window.open('<%=url %>/epay/query.action','_parent')"  value="查证" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" /><br/>
				</td>
				<td style="background: beige;width:300px;">
					<input type=button onclick="window.open('<%=url %>/old/query.action','_parent')"  value="老查证" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" /><br/>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>