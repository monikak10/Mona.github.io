<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Menu item list</title>
<link rel="stylesheet" type="text/css" href="./style/style.css" />
<script type="text/javascript" src="./js/script.js"></script>
</head>
<body>
	<header> <span class="head">truYum</span>
	 <img src="./images/truyum-logo-light.png" /> <a id="menu" href="ShowMenuItemListAdmin">Menu</a> </header>

	<form name="Form" method="post"
		action="EditMenuItem?menuItemId=${menuItem.id}"
		onsubmit="return validate()">
		
		<h1 class="cont2">Edit Menu Items</h1>
		<table class="cont1">
			<tr rowspan="4">
				<th class="txt-left"><label for="txt-field">Name</label></th>
			</tr>

			<tr rowspan="4">
				<td><input type="text" id="txt-field" name="txtName" value="${menuItem.name}" /></td>
			</tr>

			<tr>
				<th class="txt-left"><label for="price-field">Price(Rs.)<label></th>
				<th class="txt-left"><label for="price-field">Active</label></th>
				<th class="txt-left"><label for="rb1">Date of Launch</label></th>
				<th class="txt-left"><label for="Main Course">Category</label>
				</th>
			</tr>

			<tr>
				<td><input type="text" name="price" value="${menuItem.price}" id="price-field" /></td>
				<td>
					<input type="radio" name="rb" id="rb1"	<c:if test="${menuItem.active eq 'true'}"> checked="checked"</c:if> /><label for="rb1">Yes</label> 
					<input type="radio" name="rb" id="rb2"	<c:if test="${menuItem.active eq 'false'}"> checked="checked" </c:if> /><label for="rb2">No</label>
				</td>
				<td><input type="text" name="dol" id="dol-field"
					value="<fmt:formatDate type="date" pattern = 'dd/MM/yyyy' value='${menuItem.dateOfLaunch}'></fmt:formatDate>" />
				</td>
				<td><select name="mainCourse" id="MainCourse">
						<option value="Starters">Starters</option>
						<option value="Main Course">Main Course</option>
						<option value="Desserts">Desserts</option>
						<option value="Drinks">Drinks</option>
				</select></td>
			</tr>

			<tr rowspan="4">
				<td><input type="checkbox" name="fd"
					<c:if test="${menuItem.freeDelivery eq 'true'}">Checked</c:if>
					<c:if test="${menuItem.freeDelivery eq 'false'}">Checked</c:if> />Free Delivery</td>
			</tr>

			<tr>
				<td><input type="submit" value="Save" name="sb" id="col-button" />
				</td>
			</tr>
		</table>
	</form>
	<footer> <span class="copy">
		<h5>Copyright@2019</h5>
	</span> </footer>
</body>
</html>
