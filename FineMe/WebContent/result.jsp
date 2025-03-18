<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<title>FIND</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main_css.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	</head>
	<body>
<%
request.setCharacterEncoding("UTF-8");
String type = request.getParameter("type");

%>
		<!-- Header -->
			<header id="header">
				<a href="main.html" class="title">Find Me</a>
				<nav>
					<ul>
						<li><a href="main.html">Home</a></li>
						<li><a href="survey.jsp">Survey</a></li>
						<li><a href="element.jsp"  class="active">Find</a></li>
					</ul>
				</nav>
			</header>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<section id="main" class="wrapper">
						<div class="inner">

							<!-- Text -->
								<section>
									<h1 style="color:black"><%=type %></h1>
									<pre>
<%		
		BufferedReader reader = null;
	 	try {
	 		String dirPath2 = application.getRealPath("/WEB-INF/mbti_result/"+type+".txt");
 			reader = new BufferedReader(new FileReader(dirPath2));
 			while(true){
 				String str = reader.readLine();
 				if(str == null) break;
	 		out.println(str);
 			}
	 		

	 	} catch (Exception e) {
	 		
	 	} finally {
	 	}
	 	
		
	%>
	</pre>
									<hr/>
								</section>
						</div>
					</section>
			</div>
</body>
</html>