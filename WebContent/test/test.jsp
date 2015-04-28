<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="../error/error.jsp"%>
<%@ page info="黄飞之"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="../js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="../js/test.js"></script>
<title>Insert title here</title>

</head>
<body >
	<button id="go"> Run</button><br>
<div id="block">Hello!</div>
	    	     
</body>
<script type="text/javascript">
$(document).ready(function(){
	$("#go").click(function(){
		$("#block").toggle(
				function(){
					$(this).animate({
						width:"90%",
						height:"100%",
						fontSize:"10em",
						boderWidth:10
					},1000);
				},
				function(){
					$(this).animate({
						
					},1000);
				}
	);
	});
		
	
});

</script>

</html>