<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Menu item list Admin</title>
<link rel="stylesheet" type="text/css" href="./style/style.css" />
</head>
<body>
	<header> <span class="head">truYum</span> <img
		src="./images/truyum-logo-light.png" /> <a id="menu"
		href="ShowMenuItemListAdmin">Menu</a> </header>
	<div>
		<h1 class="cont2">Menu Items</h1>
		<table class="cont1">
			<tr>
				<th class="txt-left">Name</th>
				<th class="txt-right">Price</th>
				<th class="txt-center">Active</th>
				<th class="txt-center">Date of Launch</th>
				<th class="txt-center">Category</th>
				<th class="txt-center">Free Delivery</th>
				<th class="txt-center">Action</th>
			</tr>
			<c:forEach items="${menuItemList}" var="menu">
				<tr>
					<td class="txt-left">${menu.name}</td>
					<td class="txt-right">Rs.${menu.price}</td>
					<td class="txt-center"><c:if test="${menu.active}">Yes</c:if>
						<c:if test="${!menu.active}">No</c:if></td>
					<td class="txt-center"><fmt:formatDate pattern="dd/MM/yyyy"
							value="${menu.dateOfLaunch}"></fmt:formatDate></td>
					<td class="txt-center">${menu.category}</td>
					<td class="txt-center"><c:if test="${menu.freeDelivery}">Yes</c:if>
						<c:if test="${!menu.freeDelivery}">No</c:if></td>
					<td class="txt-center"><a
						href="ShowEditMenuItem?menuItemId=${menu.id}" target="_blank">Edit</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<footer class="foot">
	<h5>Copyright@2019</h5>
	</footer>
</body>
</html>
