
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="user.userDAO" %>
 <%@page import="user.userDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>  
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String name = request.getParameter("inputName");
String email = request.getParameter("inputEmail");
String pwd = request.getParameter("inputPassword");
String phone = request.getParameter("inputMobile");
String message = request.getParameter("inputMessage");


userDAO userDAO = new userDAO();
int result = userDAO.join(name, email, pwd, phone, message);
%>
<script type="text/javascript">
alert( '회원가입이 완료되었습니다.');
location.href="Main.jsp";
</script>

</body>
</html>