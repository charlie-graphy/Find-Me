<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
<%
		request.setCharacterEncoding("UTF-8"); // post방식일 때 무조건 사용해야 함.
		String name = request.getParameter("demo-name");
		String mbti = request.getParameter("mbti-name");

		PrintWriter writer = null;

		SimpleDateFormat fm1 = new SimpleDateFormat("yyyy년 MM월 dd일");
	    String date = fm1.format(new Date());
	    out.println(name);


			try {
				String filePath = application.getRealPath("/WEB-INF/mbti/"+date+"_"+name);
				writer = new PrintWriter(filePath);

				writer.printf(mbti);

				writer.flush();
			} catch (Exception e) {
				out.println("오류발생");
			}
			response.sendRedirect("element.jsp?");
%>


</body>
</html>