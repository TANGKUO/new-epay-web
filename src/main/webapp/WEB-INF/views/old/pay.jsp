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
	<input type=button onclick="window.open('<%=url %>/old/query.action','_parent')"  value="老查证" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" />
		<h1>老支付</h1>
		<form action="/newEpay/old/pay.action" method="post">
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
					<td><input type="text" name="transId"  value="QPReq"/></td>
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
					<td>分期标志</td>
					<td><input type="text" name="stageFlag" value="0"/></td>
					<td>0->非分期<br/>
						1->分期<br/>
						默认为 0</td>
					<td>1</td>
				</tr>
				<tr>
					<td>分期期数</td>
					<td><input type="text" name="stages" value=""/></td>
					<td>“分期标志为 1 时” ，该字段不能为空<br/>
						3->3 期<br/>
						6->6 期<br/>
						9->9 期<br/>
						12->12 期<br/>
						24->24 期</td>
					<td>4</td>
				</tr>
				<tr>
					<td><font color="red">*</font>银行卡卡号</td>
					<td><input type="text" name="cardNo" value="4218700000007422"/></td>
					<td></td>
					<td>22</td>
				</tr>
				<tr>
					<td><font color="red">*</font>交易金额</td>
					<td><input type="text" name="amount" value="0.01"/></td>
					<td></td>
					<td>12</td>
				</tr>
				<tr>
					<td>银行卡户名</td>
					<td><input type="text" name="name" value=""/></td>
					<td></td>
					<td>30</td>
				</tr>
				<tr>
					<td>证件类型</td>
					<td><input type="text" name="certType" /></td>
					<td>01 18 位身份证<br/>
						02 15 位身份证<br/>
						03 军官证<br/>
						04 台胞证<br/>
						05 05－回乡证<br/>
						06 06－港澳通行证<br/>
						10 护照<br/>
						11 户口簿<br/>
						12 中国护照<br/>
						13 外国护照<br/>
						14 香港通行证<br/>
						15 澳门通行证<br/>
						16 台湾通行</td>
					<td>2</td>
				</tr>
				<tr>
					<td>证件号码</td>
					<td><input type="text" name="certNo" value=""/></td>
					<td></td>
					<td>19</td>
				</tr>
				<tr>
					<td>手机号码</td>
					<td><input type="text" name="phone" /></td>
					<td></td>
					<td>11</td>
				</tr>
				<tr>
					<td>有效期</td>
					<td><input type="text" name="validDate" /></td>
					<td></td>
					<td>4</td>
				</tr>
				<tr>
					<td>cvv2</td>
					<td><input type="text" name="cvv2" /></td>
					<td></td>
					<td>3</td>
				</tr>
				<tr>
					<td>分期手续费</td>
					<td><input type="text" name="cifFee" /></td>
					<td>以元为单位</td>
					<td>12</td>
				</tr>
				<tr>
					<td>手续费</td>
					<td><input type="text" name="charge" /></td>
					<td></td>
					<td>12</td>
				</tr>
				<tr>
					<td>交易货币代码</td>
					<td><input type="text" name="currency" /></td>
					<td></td>
					<td>3</td>
				</tr>
				<tr>
					<td>商品描述</td>
					<td><input type="text" name="goods" /></td>
					<td></td>
					<td>30</td>
				</tr>
				<tr>
					<td><font color="red">*</font>业务类型</td>
					<td><input type="text" name="bussType" value="1"/></td>
					<td>1 - 快捷支付 2-协议支付</td>
					<td>1</td>
				</tr>
				<tr>
					<td><font color="red">*</font>交易来源</td>
					<td><input type="text" name="tranSource" value="1"/></td>
					<td>1 常规来源 2 商城来源 3 其他来源<br/>
						默认为 1</td>
					<td>1</td>
				</tr>
				<tr>
					<td><font color="red">*</font>费率类型</td>
					<td><input type="text" name="feeMode" value="1"/></td>
					<td>0 活动 1 非活动<br/>
						默认为 1</td>
					<td>1</td>
				</tr>
				<tr>
					<td>清算商户</td>
					<td><input type="text" name="clearMerchant" /></td>
					<td></td>
					<td>15</td>
				</tr>
				<tr>
					<td>商户端账号</td>
					<td><input type="text" name="relatedAcct"  /></td>
					<td>客户在商户端的会员账号</td>
					<td>40</td>
				</tr>
				<tr>
					<td>二级商户扩展信息</td>
					<td><input type="text" name="subMerExtension"  /></td>
					<td></td>
					<td>80</td>
				</tr>
				<tr>
					<td><font color="red">*</font>请求路径</td>
					<td><input type="text" name="url"
						value="http://195.203.56.35:9080/nep/quickPayAccess.do" /></td>
					<td></td>
					<td></td>
				</tr>
			</table>
			<input type="submit" value="确认" style="font: normal 16px arial, sans-serif;padding: 5px 30px 5px 30px;margin : 18px;" />
		</form>
	</div>
</body>
</html>