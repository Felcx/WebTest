<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
p{
  font-size: 1.2em;
  font-style: italic;
}
</style>
</head>
<body>
   <s:debug/>
   <p>条件语句:</p>
   <s:property value="@java.lang.System@getenv('JAVA_HOME')"/><br>
   <s:property value="@java.lang.Math@PI"/>
   <s:if test="'c' in {'a','b'}">
   <p>yes</p>
   </s:if>
   <s:else>
   <p>no</p>
   </s:else>
   <s:set name="felcx" value="13"/>   
   <s:if test="#felcx>60">
   <p>老年人</p>
   </s:if>
   <s:elseif test="#felcx>30">
   <p>中年人</p>
   </s:elseif>
   <s:elseif test="#felcx>20">
   <p>年轻人</p>
   </s:elseif>
   <s:else>
   <p>少年</p>
   </s:else>
   <table border="1" width="240">
   <s:generator separator="," val="'1,2,3,4,5,6,7,8,9'">
      <s:iterator status="i">
         <tr <s:if test="#i.odd">
         style="background-color:#bbbbbb"</s:if>>
         <td><s:property/></td>
         </tr>
      </s:iterator>
   </s:generator>
   </table>
   <s:bean var="now" name="java.util.Date"></s:bean>
   <s:date name="#now" format="yyyy/MM/dd hh:mm:ss" nice="true"/>
   <s:url value="allFont.jsp"></s:url>
</body>
</html>