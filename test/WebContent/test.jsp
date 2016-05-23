<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String DB_URL = "jdbc:oracle:thin:@218.238.23.215:1521:orcl";
String DB_USER = "scott";
String DB_PASSWORD= "tiger";

Connection conn;
Statement stmt;

try {
Class.forName("oracle.jdbc.driver.OracleDriver");

conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

stmt = conn.createStatement();

conn.close();

out.println("oracle jdbc test: connect ok!!");
} catch(Exception e)
{out.println(e.getMessage());}
%>
</body>
</html>