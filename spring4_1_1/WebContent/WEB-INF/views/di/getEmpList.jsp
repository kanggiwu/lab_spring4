<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% 
	List<Map<String,Object>> empList = (List<Map<String,Object>>)request.getAttribute("empList");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원목록페이지</title>
</head>
<body>
사원목록 페이지입니다.
</body>
</html>