<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="db.DB" %>
<%@ page import="util.Util" %>
<jsp:useBean id="db" class="db.DB"/>
<%
db.getConnection();
db.dbClose();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DB Connection TEST</title>
</head>
<body>
<%=Util.SHA256(Util.MD5("1234")) %>[]
<%=Util.MD5("1234") %><br />
<%
String aaa = Util.encrypt("1234abcdefghaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
out.print(aaa+"["+aaa.length()+"]");
out.print("<br />encrypt::"+Util.decrypt(aaa));
%>
</body>
</html>