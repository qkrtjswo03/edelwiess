<%@page import="org.apache.tomcat.jni.User"%>
<%@page import="user.userDAO"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="DBUtil.DBUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>  
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");		/* 한글 깨짐 방지 */
	String id = request.getParameter("inputEmail");		/* checkid 를 가져와 변수 id에 저장 */
	String pwd = request.getParameter("inputPassword");	/* checkpwd 를 가져와 변수 pwd에 저장 */
	
	Connection con = DBUtil.getConnection();	//데이터베이스 연결 관련 변수 선언
	
	String sql = "select * from member where email=?"; 	/* 변수 선언 = sql Mysql에 select 문을 사용하여 멤버 테이블에 id를 가져온다 */
	PreparedStatement psmt = con.prepareStatement(sql);	 /* 사용자가 입력한 이름과 이메일 주소를 DB에 등록하기 위한 SQL 문 준비 */
	psmt.setString(1, id);  	/* 사용자가 입력한  id 내용을 SQL문에 반영. */
	ResultSet rs = psmt.executeQuery(); /* 값을 입력한 경우 sql 문장을 수행. */	
	String pass;
	rs.next(); 	/* 다음 수행 */
	pass = rs.getString("pwd"); 	/* 사용자가 입력한 pwd 내용을 SQL문에 반영. */
	
	
	String sqq = "select name from member where email=?"; 	/*변수 선언 = sqq Mysql에 select 문을 사용하여 멤버 테이블에 id를 가져온다 */
	   PreparedStatement psm = con.prepareStatement(sqq);	 /* 사용자가 입력한 이름과 이메일 주소를 DB에 등록하기 위한 SQL 문 준비 */
	   psm.setString(1, id); 	/* 사용자가 입력한  id 내용을 SQL문에 반영. */
	   ResultSet rr = psm.executeQuery(); 		/* 값을 입력한 경우 sql 문장을 수행. */	
	   String pas;
	   rr.next();
	   
	if(pass.equals(pwd)){  /* pwd를 기준으로 */
		
		out.println("<script>");
		out.println("alert('로그인 되었습니다.')"); /* 성공시 출력한 문자 */
	 session.setAttribute("sessionUser",id); 	
	  session.setAttribute("name",rr.getObject("name")); /* 성공시 세션 설정할 이름값 */ 
		out.println("location.href='LoginMain.jsp'"); /* 성공시 로그인 후 화면으로 이도 */
		out.println("</script>");
		String saveid = rs.getString("name");
		out.println(saveid);

	}
	else{
		out.println("<script>");
		out.println("alert('정보가 일치하지 않습니다.')");
		out.println("location.href='LoginPage.jsp'");
		out.println("</script>");
	}

%>
</body>
</html>