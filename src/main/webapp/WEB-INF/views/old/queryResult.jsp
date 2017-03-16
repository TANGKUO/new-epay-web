<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新e付</title>
</head>
<% String url = request.getScheme()+"://"+ request.getServerName()+":"+request.getLocalPort()+request.getContextPath(); %>
<body>
<div align="center">
	<input type=button onclick="window.open('<%=url %>/old/sign.action','_parent')"  value="老签约" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" />
	<input type=button onclick="window.open('<%=url %>/old/pay.action','_parent')"  value="老支付" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" />
	<input type=button onclick="window.open('<%=url %>/old/paySub.action','_parent')"  value="老支付二级" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" />
	<input type=button onclick="window.open('<%=url %>/old/refund.action','_parent')"  value="老退货" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" />
	<input type=button onclick="window.open('<%=url %>/old/query.action','_parent')"  value="老查证" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" />	<h2>老查证结果</h2>
	<c:if test="${result['Flag'] eq '1'}">
		<c:choose>
		  	<c:when test="${result['transId'] eq 'Error'}">
			<p>失败响应</p>
			<table style="width:670px;background-color: #FF9797; border-width: 2px; margin: auto; padding: 20px;" border="1">
					<tr>
						<td  style="width:37%"><font color="red">*</font>交易代码</td>
						<td  style="width:27%">${result['transId']}</td>
						<td  style="width:28%"></td>
						<td>10</td>
					</tr>
					<tr>
						<td><font color="red">*</font>商户号</td>
						<td>${result['merId']}</td>
						<td></td>
						<td>15</td>
					</tr>
					<tr>
						<td><font color="red">*</font>错误代码</td>
						<td>${result['errorCode']}</td>
						<td></td>
						<td>4</td>
					</tr>
					<tr>
						<td><font color="red">*</font>错误描述</td>
						<td>${result['errorMessage']}</td>
						<td></td>
						<td>256</td>
					</tr>
					<tr>
						<td><font color="red">*</font>详细错误信息</td>
						<td>${result['errorDetail']}</td>
						<td></td>
						<td>512</td>
					</tr>
			</table>
			</c:when>
			<c:otherwise>
			<p>成功响应</p>
			<table style="width:670px;background-color: #93FF93; border-width: 2px; margin: auto; padding: 20px;" border="1">
					<tr>
					<td  style="width:37%"><font color="red">*</font>交易代码</td>
					<td  style="width:27%">${result['transId']}</td>
					<td  style="width:28%"></td>
					<td>10</td>
				</tr>
				<tr>
					<td><font color="red">*</font>交易性质</td>
					<td>${result['type']}</td>
					<td>1支付; 2退货</td>
					<td>1</td>
				</tr>
				<tr>
					<td><font color="red">*</font>交易订单号</td>
					<td>${result['serialNo']}</td>
					<td></td>
					<td>20</td>
				</tr>
				<tr>
					<td><font color="red">*</font>订单日期时间</td>
					<td>${result['date']}</td>
					<td>YYYYMMDD HH:MM:SS</td>
					<td>17</td>
				</tr>
				<tr>
					<td><font color="red">*</font>交易金额</td>
					<td>${result['amount']}</td>
					<td>以元为单位</td>
					<td>12</td>
				</tr>
				<tr>
					<td>手续费</td>
					<td>${result['charge']}</td>
					<td></td>
					<td>12</td>
				</tr>
				<tr>
					<td><font color="red">*</font>交易货币代码</td>
					<td>${result['currency']}</td>
					<td></td>
					<td>3</td>
				</tr>
				<tr>
					<td>原流水号</td>
					<td>${result['originalSerialNo']}</td>
					<td></td>
					<td>20</td>
				</tr>
				<tr>
					<td>原交易日期和时间</td>
					<td>${result['originalDate']}</td>
					<td></td>
					<td>17</td>
				</tr>
				<tr>
					<td><font color="red">*</font>交易状态</td>
					<td>${result['status']}</td>
					<td>0000：失败（代表银行账务处理失败）<br/>
						0001：成功（代表银行账务处理成功）<br/>
						0002：银行处理中（代表银行处理中间状态）<br/>
						0003：银行查无此订单</td>
					<td>22</td>
				</tr>
				<tr>
					<td><font color="red">*</font>业务类型</td>
					<td>${result['bussType']}</td>
					<td>1- 快捷支付；2 - 协议支付</td>
					<td>22</td>
				</tr>
				<tr>
					<td><font color="red">*</font>清算日期</td>
					<td>${result['clearDate']}</td>
					<td>YYYYMMDD</td>
					<td>8</td>
				</tr>
			</table>
　　			</c:otherwise>
		</c:choose>
		<input type=button onclick="window.history.back()"  value="返回" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" />
		
	            <br/>
	     <p>原响应报文</p>
	    <table style="width:670px;background-color: beige; border-width: 2px; margin: auto; padding: 20px;" border="1">
			<tr><td><c:out value='${message}'/></td></tr>
		</table>
	</c:if>
	<c:if test="${result['Flag'] == '0'}">
		响应超时
	</c:if>
</div>
</body>
</html>