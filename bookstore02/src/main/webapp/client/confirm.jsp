<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
	<body>
	
	
	
	<form action="${pageContext.request.contextPath }/client/cart/pay.do" method="post">
		<h3>订单号：${order.id}</h3>
		<h3>付款金额 ：${order.money }</h3>
		<h3>订单名称：网上书城订单-${order.id }</h3>
		<input type="hidden" name="id" value="${order.id }" /> 
		<input  type="hidden" name="money" value="${order.money}" /> 
		<input  type="hidden" name="name" value="网上书城订单-${order.id }" /> 
		<input type="submit" value="确认支付" />
	</form>
	
	
	
	</body>
</html>