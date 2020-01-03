<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="./style/style.css" />
</head>
<body>
	<header> <span class="head">truYum</span> <img
		src="./images/truyum-logo-light.png" /> <a id="cart" href="ShowCart">Cart</a>
	<a id="menu" href="ShowMenuItemListCustomer">Menu</a> </header>
	<div>
		<h1 class="status2">Cart</h1>
		<h3 class="head-color1">${msg}</h3>
		<table class="cont1">
			<tr>
				<th class="txt-left">Name</th>
				<th class="txt-center">Free Delivery</th>
				<th class="txt-right">Price</th>
			</tr>
			<c:forEach items="${menuItemList}" var="menu">
				<tr>
					<td class="txt-left">${menu.name}</td>
					<td class="txt-center"><c:if test="${menu.freeDelivery}">Yes</c:if>
						<c:if test="${!menu.freeDelivery}">No</c:if></td>
					<td class="txt-right">Rs.${menu.price}</td>
					<td class="txt-right" id="link-color"><a
						href="RemoveCart?menuItemId=${menu.id}">Delete</a></td>
				</tr>

			</c:forEach>
			<tr>
				<th></th>
				<th>Total</th>
				<th class="txt-right">Rs.228.00</th>
			</tr>

		</table>
	</div>
	<footer class="foot">
	<h5>Copyright@2019</h5>
	</footer>
</body>
</html>
