<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="<%=request.getContextPath()%>/js/jquery-1.7.1.min.js">
</script>
</head>
<body>
   <s:form id="loginForm">
     用户名：<s:textfield name="user" label="用户名："/><br>
     密码：<s:textfield name="user" label="密码："/><br>
     <input id="loginBn" type="button" value="提交"/>
   </s:form>
   <div id="show" style="display:none;"></div>
   <script type="text/javascript">
       $("#loginBn").click(function(){
    	   $.get("loginPro",$("#loginForm").serializeArray(),function(data,statusText){
    		   $("#show").height(80)
    		   .width(300)
    		   .css("border","1px solid black")
    		   .css("backgroud-color","#efef99")
    		   .css("color","#ff0000")
    		   .css("padding","20px")
    		   .empty();
    		   $("#show").append("登录结果："+data+"<br/>");
    		   $("#show").show(2000);
    	   },"html");
       });
   </script>
</body>
</html>