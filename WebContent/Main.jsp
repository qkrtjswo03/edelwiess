<%@page import="org.apache.tomcat.jni.User"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="DBUtil.DBUtil"%>
<%@page import="java.sql.Connection"%>
 <%@page import="user.userDAO" %>
 <%@page import="user.userDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
	<head>
		<title>Edelwiess</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>

	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<div class="logo">
							<span class="icon fa-gem"></span>
						</div>
						<div class="content">
							<div class="inner">
								<h1>Edelweiss</h1>
								<p>First <a href="https://www.instagram.com/">project</a>  with 박선재, 조성연, 김동준, 오문성  
							</div>
						</div>
						<nav>
							<ul>
								<li><a href="#intro">Intro</a></li>
								<li><a href="#location">Location</a></li>
								<li><a href="#Login">Login</a></li>
								<li><a href="#Signup">Sign Up</a></li>
								<!--<li><a href="#elements">Elements</a></li>-->
							</ul>
						</nav>
					</header>

				<!-- Main -->
					<div id="main">

						<!-- Intro -->
							<article id="intro">
								<h2 class="major">Intro</h2>
								<span class="image main"><img src="/images/cloud" alt="" /></span>
								
							</article>

						<!-- Location -->
						
							<article id="location">
							<center>
								<h2 class="major">Location</h2>
								<!-- 구글 API를 사용하기 위한 프레임 워크 -->
								
   								 <script src="http://maps.googleapis.com/maps/api/js"></script>
								<script>
								function setMarker(lat, lng, content) {	/* 해당 작업을 반복 하기 위한 함수 */
  								 var marker;
  								 marker = new google.maps.Marker({
  						         position: new google.maps.LatLng(lat, lng), // 마커가 위치할 위도와 경도(변수)
          						 map: map,
          						 title: 'this is test' // 마커에 마우스 포인트를 갖다댔을 때 뜨는 타이틀
    						});

   							 marker.addListener('click', function(mdata) { /* 클릭 할 때 마다 해당 함수 실행 */
    						  showInfoWindow(mdata, content);
   								 });
 							 }
  
								function initialize() {
 							 var LatLng = new google.maps.LatLng(37.4899963, 126.9270812); // 위도와 경도.
 

  							var mapProp = {
   								 center: LatLng, // 위치
  							  zoom:13, // 어느정도까지 세세하게 볼 것인지.
  							  mapTypeId:google.maps.MapTypeId.ROADMAP
 							 };
 							 var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
 							 var marker = new google.maps.Marker({
								position: LatLng,
							map: map,
							title: '한국정보교육원입니다.!'
 							 });
							}
							google.maps.event.addDomListener(window, 'load', initialize);
							</script>
							
							<div id="googleMap" style="width:500px;height:380px;"></div>
							<h4><br>주소: 서울특별시 관악구 봉천로 227 보라매샤르망</h4>
							<h4><br>수강 강좌 : 클라우드 자동화 기반 애플리케이션 운영 및 배포</h4>
							<h4><br>수업 기간 : 2021.12.30 ~ 2022.06.27</h4>
							<hr>
							<h5><p class="copyright">&copy; 한국정보교육원 <a href="#">: Edelwiess </a>.</p></h5>
							</center>
							</article>
					
						
						<!-- Login -->
							<article id="Login">
								<h2 class="major">LOGIN</h2>
									<div class="fields">
										<div class="field half">
										<form class="form-signin" action="LoginCheck.jsp" method="post"><p> <!-- 로그인 체크 로 넘어감 -->
											<label for="inputEmail">Email</label>
											<input type="email" id="inputEmail" class="form-control" placeholder="Email address" name="inputEmail" required autofocus>
										</div>
										<div class="field half">
											<label for="inputPassword">Password</label>
											<input type="password" id="inputPassword" class="form-control" placeholder="Password" name="inputPassword" required>
										</div>
									</div><p>
										<ul class="actions">
											<li><input type="submit" value="Sign in" /></li>
											<li><input type="reset" value="Reset" /></li>
										</ul>
								</form>
								
								<ul class="icons">
									<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
									<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
									<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
									<li><a href="#" class="icon brands fa-github"><span class="label">GitHub</span></a></li>
								</ul>
							</article>

						<!-- SIGN UP -->
							<article id="Signup">
								<h2 class="major">Sign Up</h2>
								<form action="joinOK.jsp" method="post">
									<div class="fields">
										<div class="field half">
											<label for="name">Name</label>
                     					   <input type="text" class="form-control" id="inputName" placeholder="Name" name="inputName">
											
										</div>
										<div class="field half">
											<label for="email">EMAIL</label>
                      				    <input type="email" class="form-control" id="inputEmail" placeholder="Emaill address" name="inputEmail" >
										</div>
										
										<div class="field half">
											<label for="password">PASSWORD</label>
                      					    <input type="password" class="form-control" id="inputPassword" placeholder="Password" name="inputPassword">
											
										</div>
										<div class="field half">
											<label for="PHONE">PHONE</label>
                      					    <input type="text" class="form-control" id="inputMobile" placeholder="Phone Number" name="inputMobile">
											
										</div>
										
										<div class="field">
											<label for="message">Message</label>
											 <input type="text" class="form-control" id="inputMessage" placeholder="Input Your Message" name="inputMessage" rows="4">
											<!--  <textarea name="inputMessage" id="inputMessage" placeholder="Input Your Message" rows="4"></textarea> -->
										</div>
									</div>
									<ul class="actions">
										<li><input type="submit" value="Sign Up" /></li>
										<li><input type="reset" value="Reset" /></li>
									</ul>
								</form>
								
								
								<ul class="icons">
									<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
									<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
									<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
									<li><a href="#" class="icon brands fa-github"><span class="label">GitHub</span></a></li>
								</ul>
							</article>

						<!-- Elements -->
							

					</div>

				<!-- Footer -->
					<footer id="footer">
						<p class="copyright">&copy; 한국정보교육원 <a href="#">: Edelwiess </a>.</p>
					</footer>

			</div>

		<!-- BG -->
			<div id="bg"></div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>
