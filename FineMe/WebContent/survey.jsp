<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<head>
		<title>Find Me</title>
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
						<li><a href="survey.jsp"  class="active">Survey</a></li>
						<li><a href="element.jsp">Find</a></li>
					</ul>
				</nav>
			</header>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<section id="main" class="wrapper">
						<div class="inner">
							<h1 class="major">Survey</h1>

							<!-- Text -->
								<section>
									<h2>MBTI유형검사</h2>
									<p><b>The Myers-Briggs Type Indicator</b> 의 약어이며 <strong>'마이어브릭스 성격진단'</strong> 혹은 <strong>'성격유형지표'</strong>라고도 불립니다.</p>
									<p>저작권으로 인해 사이트에서 직접 못하므로 링크를 통해서 해주시기 바랍니다.</p>
									<a href="https://www.16personalities.com/ko/무료-성격-유형-검사" target="_blacnk">MBTI 검사하기</a>
									<hr/>
								</section>



							<!-- Form -->
								<section>
									<h2>Form</h2>
									<form method="post" action="find.jsp">
										<div class="row uniform">
											<div class="6u 12u$(xsmall)">
												<input type="text" name="demo-name" id="demo-name" value="" placeholder="이름을 적어주세요." />
												<input type="text" name="mbti-name" id="mbti-name" value="" placeholder="유형을 적어주세요. ex)INTJ" />
											</div>
											<div class="12u$">
												<ul class="actions">
													<li><input type="submit" value="SAVE" class="special" /></li>
													<li><input type="reset" value="Reset" /></li>
												</ul>
											</div>
										</div>
									</form>
								</section>

						</div>
					</section>

			</div>

		<!-- Footer -->
			<footer id="footer" class="wrapper alt">
				<div class="inner">
					<ul class="menu">
						<li>&copy; Untitled. All rights reserved.</li><li>Developer : SuYeon</li>
					</ul>
				</div>
			</footer>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

</body>
</html>