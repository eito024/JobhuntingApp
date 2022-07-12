<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="login.UserDto" %>
<% ArrayList<UserDto> list = (ArrayList<UserDto>)request.getAttribute("list"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登録済みユーザ一覧</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/login.css">
</head>
<body>
    <h1>登録済みユーザ一覧</h1>
    <table>
        <tr><th>アカウント名</th><th>アカウントID</th><th>パスワード</th></tr>
        <% for (UserDto ud: list) { %>
        <tr>
        <td><%= ud.getName() %></td>
        <td><%= ud.getUserid() %></td>
        <td><%= ud.getPassword() %></td>
        </tr>
        <% } %>
    </table>
    <br>
    <hr>
    <form action="./login_main.jsp" method="post">
        <button type="submit"><pre>戻る</pre></button>
    </form>
</body>
</html>