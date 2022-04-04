<%@ page import="java.io.File" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
							<h1>storage</h1>
								<%
									String directory = "C:/Users/qkrtj/eclipse-workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp1/wtpwebapps/edelwiess/upload/ ";  
									String files[] = new File(directory).list();
		
									for(String file : files) {
										out.write("<a href = \"" + request.getContextPath() + "/downloadAction?file=" +
										java.net.URLEncoder.encode(file, "UTF-8") + "\">"+file + "</a><br>");
									}
	 							%>
							</div>
						</div>	
						<nav>
							<ul>
								<li><a href="Loding1.html">Back</a></li>
							</ul>
						</nav>
					</header>

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

	

