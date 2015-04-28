<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.util.Properties"%>
<%@page import="com.felcx.tool.FelcxTool"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>字体总结</title>
 <%
 Properties pro = new Properties(); 
 String realpath = request.getRealPath("/WEB-INF/classes"); 
 try{  
 //读取配置文件
 FileInputStream in = new FileInputStream(realpath+"/felcx.properties"); 
 pro.load(new InputStreamReader(in,"utf-8")); 
 } 
 catch(Exception e){ 
     out.println(e); 
 }
 
  //String[] fonts={"Verdana", "Geneva", "Arial", "sans-serif"};
  String fontsStr=pro.getProperty("fonts");
  String[] fonts=fontsStr.split(",");
  request.setAttribute("fonts", fonts);
 %>
<style type="text/css">
    <%
      for(int i=0;i<fonts.length;i++){
    	  
    %>
    h1#font<%=i%>{
    	font-family:"<%=fonts[i]%>"
    }
    <%}%>
    #fontWei1{
      font-weight: lighter;
      text-decoration:none;
    }
    #fontWei2{
      font-weight: normal;
       text-decoration:underline;
    }
    #fontWei3{
      font-weight: bold;
       text-decoration:overline;
    }
    #fontWei4{
      font-weight: bolder;
       text-decoration:line-through;
    }
</style>
</head>
<body>
    
    <s:iterator value="#request.fonts" id="font" status="i">
        <h1 id="font<s:property value='#i.index'/>"><s:property value="font"/>:字体测试：ABCDEabcde</h1>
    </s:iterator>
    <p id="fontWei1">lighter nono</p>
    <p id="fontWei2">normal underline</p>
    <p id="fontWei3">bold overline</p>
    <p id="fontWei4">bolder line-through</p>
</body>
</html>