function validate()
{
	var a = document.forms["Form"]["txt"].value;
	var b = document.forms["Form"]["price"].value;
	var c = document.forms["Form"]["dol"].value;
	if (a == "") {
		alert("Title is required");
		document.Form.txt.focus();
		return false;
	}
	if ((a <= 2) || (a >= 65)) {
		alert("Title should have 2 to 65 characters");
		document.Form.txt.focus();
		return false;
	}
	if (b == "") {
		alert("Price is required");
		document.Form.price.focus();
		return false;
	}
	var r = /[^0-9]/
	if (r.test(b)) {
		alert("Price has to be a number");
		document.Form.price.focus();
		return false;
	}
	if (c == "") {
		alert("Date of Launch is required");
		document.Form.dol.focus();
		return false;
	}
}