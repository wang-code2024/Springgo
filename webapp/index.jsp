<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.main{
		margin: 0 auto;
		width: 400px;
	}
</style>
</head>
<body>
 <div class="main">
  	<h1>hello ゲスト</h1>
    <a href="${pageContext.request.contextPath}/student">学生追加へようこそ</a>
    <br>
    <a href="${pageContext.request.contextPath}/chengji">成績一覧</a>
  </div>
</body>
</html>