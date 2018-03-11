


<%
	String firstname = request.getParameter("getFname");
	String lastname = request.getParameter("getFname");
	String middlename = request.getParameter("getFname");
	String address = request.getParameter("getFname");
	String street = request.getParameter("getFname");
	String city = request.getParameter("getFname");
	String state = request.getParameter("getFname");
	String zipcode = request.getParameter("getFname");
	String email = request.getParameter("getFname");
	String contact = request.getParameter("getFname");
	String packagename = request.getParameter("getFname");
	String price = request.getParameter("getFname");
	String code = request.getParameter("getFname");
	String desc = request.getParameter("getFname");
%>
<!DOCTYPE html>
<html>
<head>
<script src="js/jquery-3.2.1.min.js"></script>
</head>
<body>
	
	<form id="formCheat"
		action="http//localhost/pagasa/class/index.php"
		method="post" name="cheatForm">
		<input type="hidden" name="firstname" value="<%=firstname%>">
		<input type="hidden" name="firstname" value="<%=lastname%>">
		<input type="hidden" name="firstname" value="<%=middlename%>">
		<input type="hidden" name="firstname" value="<%=address%>"> 
		<input type="hidden" name="firstname" value="<%=street%>"> 
		<input type="hidden" name="firstname" value="<%=city%>"> 
		<input type="hidden" name="firstname" value="<%=state%>"> 
			<input type="hidden" name="firstname" value="<%=zipcode%>"> 
			<input type="hidden" name="firstname" value="<%=email%>"> 
			<input type="hidden" name="firstname" value="<%=contact%>"> 
			<input type="hidden" name="firstname" value="<%=packagename%>"> 
			<input type="hidden" name="firstname" value="<%=price%>"> 
			<input type="hidden" name="firstname" value="<%=code%>"> 
			<input type="hidden" name="firstname" value="<%=desc%>">
	</form>
	<script type="text/javascript">
		$(function(){
			// pag ready na ung form ipapasa ung ung data na un sa project ng paymaya
			$("#formCheat").submit();
		});
	
	</script>
</body>
</html>


