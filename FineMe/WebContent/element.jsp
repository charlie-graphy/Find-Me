<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
a{
text-decoration:none;
color:black;
}
a:hover{
text-decoration:none;
}
</style>
		<title>FIND</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main_css.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	</head>
	<body>

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
									<h2>여러분의 결과를 확인하세요.</h2>
		<%
		String dirPath2 = application.getRealPath("/WEB-INF/mbti");
		File dir2 = new File(dirPath2);
		String filenames2[] = dir2.list();
	
		for(int j = 0; j < filenames2.length; j++){

		BufferedReader reader2 = null;
	 	try {
	 		String filePath = application.getRealPath("/WEB-INF/mbti/" + filenames2[j]);

	 		reader2 = new BufferedReader(new FileReader(filePath));
	 		while (true) {
	 			String str = reader2.readLine();
	 			if (str == null)
	 				break;
%>	 			<div style="border-bottom:1px solid white; padding:5px; 0px; color:black;"><a href="result.jsp?type=<%=str%>"><%
	 					out.print(filenames2[j]);
	 		%><div style="float:right; color:purple;">
	 		<%
	 			out.print(str);
	 		}

	 	} catch (Exception e) {
	 		
	 	} finally {
	 		reader2.close();
	 	}
%></div></a></div>
									
									<%
									}
									%>
								</section>
						</div>
					</section>
			</div>
</body>
</html>