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
<input type=button onclick="window.open('<%=url %>/epay/signFirst.action','_parent')"  value="签约1" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" />
<input type=button onclick="window.open('<%=url %>/epay/signSecond.action','_parent')"  value="签约2" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" />
<input type=button onclick="window.open('<%=url %>/epay/signCancel.action','_parent')"  value="解约" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" />
<input type=button onclick="window.open('<%=url %>/epay/pay.action','_parent')"  value="支付" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" />
<input type=button onclick="window.open('<%=url %>/epay/refund.action','_parent')"  value="退货" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" />
<input type=button onclick="window.open('<%=url %>/epay/query.action','_parent')"  value="查证" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" />
	<h2>退货结果</h2>
	<c:if test="${result['Flag'] eq '1'}">
	<p>响应头</p>
		<table style="width:670px;background-color: beige; border-width: 2px; margin: auto; padding: 20px;" border="1">
			<tr>
					<td  style="width:37%"><font color="red">*</font>版本</td>
					<td  style="width:27%">${result['VersionId']}</td>
					<td  style="width:28%"></td>
					<td>5</td>
				</tr>
				<tr>
					<td><font color="red">*</font>银行机构标识</td>
					<td>${result['BankId']}</td>
					<td>银行编号</td>
					<td>14</td>
				</tr>
				<tr>
					<td><font color="red">*</font>商户机构标识</td>
					<td>${result['MerId']}</td>
					<td>商户机构标识</td>
					<td>20</td>
				</tr>
				<tr>
					<td><font color="red">*</font>请求日期</td>
					<td>${result['SendDtTm']}</td>
					<td>yyyy-MM-dd'T'HH:mm:ss</td>
					<td>17</td>
				</tr>
				<tr>
					<td><font color="red">*</font>交易代码</td>
					<td>${result['TransId']}</td>
					<td>交易代码</td>
					<td>10</td>
				</tr>
				<tr>
					<td>预留字段</td>
					<td>${result['VersionId']}</td>
					<td></td>
					<td>200</td>
				</tr>
		</table>
		<c:choose>
		  	<c:when test="${result['TransId'] eq 'Error'}">
			<p>失败响应体</p>
			<table style="width:670px;background-color: #FF9797; border-width: 2px; margin: auto; padding: 20px;" border="1">
					<tr>
						<td  style="width:37%">交易流水号</td>
						<td  style="width:27%">${result['TrxId']}</td>
						<td  style="width:28%"></td>
						<td>32</td>
					</tr>
					<tr>
						<td>银行流水号</td>
						<td>${result['BkTrxId']}</td>
						<td></td>
						<td>32</td>
					</tr>
					<tr>
						<td><font color="red">*</font>系统返回码</td>
						<td>${result['SysRtnCd']}</td>
						<td></td>
						<td>10</td>
					</tr>
					<tr>
						<td><font color="red">*</font>系统返回说明</td>
						<td>${result['SysRtnDesc']}</td>
						<td></td>
						<td>128</td>
					</tr>
					<tr>
						<td><font color="red">*</font>详细错误信息</td>
						<td>${result['ErrorDetail']}</td>
						<td></td>
						<td>512</td>
					</tr>
			</table>
			</c:when>
			<c:otherwise>
			<p>成功响应体</p>
			<table style="width:670px;background-color: #93FF93; border-width: 2px; margin: auto; padding: 20px;" border="1">
					<tr>
						<td  style="width:37%"><font color="red">*</font>交易流水号</td>
						<td  style="width:27%">${result['TrxId']}</td>
						<td  style="width:28%"></td>
						<td>20</td>
					</tr>
					<tr>
						<td><font color="red">*</font>原交易流水号</td>
						<td>${result['OriTrxId']}</td>
						<td></td>
						<td>20</td>
					</tr>
					<tr>
						<td><font color="red">*</font>退款金额</td>
						<td>${result['RfdTrxAmt']}</td>
						<td>以分为单位</td>
						<td>15</td>
					</tr>
					<tr>
						<td><font color="red">*</font>交易货币代码</td>
						<td>${result['TrxCcyCd']}</td>
						<td>目前仅支持：156</td>
						<td>3</td>
					</tr>
					<tr>
						<td><font color="red">*</font>银行清算日期</td>
						<td>${result['BkSttlDt']}</td>
						<td>格式:yyyy-mm-dd</td>
						<td>10</td>
					</tr>
					<tr>
						<td><font color="red">*</font>系统返回码</td>
						<td>${result['SysRtnCd']}</td>
						<td>AAAAAAA</td>
						<td>10</td>
					</tr>
					<tr>
						<td><font color="red">*</font>系统返回说明</td>
						<td>${result['SysRtnDesc']}</td>
						<td></td>
						<td>128</td>
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