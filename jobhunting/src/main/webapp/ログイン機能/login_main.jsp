<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ユーザ管理UI</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/login.css">
</head>
<body>
<h1>登録済みユーザ一覧</h1>
<form action="../UserListServlet" method="post">
    <button type="submit"><pre>登録済みユーザ一覧</pre></button>
</form>
<hr>
<h1>ユーザログイン</h1>
<form action="./user_login.jsp" method="post">
    <button type="submit"><pre>ログイン</pre></button>
</form>
<hr>
<h1>ユーザ登録</h1>
<form action="./user_regist.jsp" method="post">
    <button type="submit"><pre>ユーザ登録</pre></button>
</form>
<hr>
<h1>ユーザ削除</h1>
<form action="./user_delete.jsp" method="post">
    <button type="submit"><pre>ユーザ削除</pre></button>
</form>
<hr>
</body>
</html>