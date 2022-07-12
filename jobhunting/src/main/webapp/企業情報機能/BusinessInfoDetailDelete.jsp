<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="businessInfoDelete.BusinessListSearchRecordBean"%>
<%@ page import="java.util.*"%>
<%@ page import="businessInfoDelete.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<html>
<head>
<meta charset="UTF-8">
<title>企業詳細情報</title>
</head>
<body>
	<header>
		<a href="../検索機能/BeforeLoginTop.html" class="logo"> <!-- href内に遷移先を書く -->
			<img src="../img/logo.png" alt="サイトのロゴ:クリックするとトップページへ遷移します"
			title="クリックするとトップページへ遷移します" width="60%" height="50%">
		</a>

		<div class="headerbutton">
			<a href=""><span class="hedbtn">ログイン</span></a>
			<!-- href内に遷移先を書く -->
			<a href=""><span class="hedbtn">ログアウト</span></a>
			<!-- href内に遷移先を書く -->
			<a href=""><span class="hedbtn">マイページ</span></a>
			<!-- href内に遷移先を書く -->
			<a href=""><span class="hedbtn">企業一覧</span></a>
			<!-- href内に遷移先を書く -->
			<a href=""><span class="hedbtn">ブックマーク</span></a>
			<!-- href内に遷移先を書く -->
			<a href=""><span class="hedbtn">パスワード変更</span></a>
			<!-- href内に遷移先を書く -->
			<a href=""><span class="hedbtn">申し込み</span></a>
			<!-- href内に遷移先を書く -->
		</div>
	</header>
	<h1>企業詳細情報</h1>
	<jsp:useBean id="BIAB" class="businessInfoDelete.BusinessInfoArrayBean"
		scope="session" />
	<%
	ArrayList<BusinessListSearchRecordBean> businessList = BIAB.getBusinessInfoRecordArray();
	%>
		<%
		int i = 0;
		%>
	<%
	for(BusinessListSearchRecordBean record : businessList) {
	%>
		<% i++; %>
		<div class="<%= i %>">
			<a href="BusinessInfoDeleteComp.html"><%= record.getBusinessName() %></a>
			<button></button>
		</div>
	<%
		  }
		%>

</body>
</html>