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
			<img src="../equal/logo.png" alt="サイトのロゴ" width="60%" height="50%">

		<div class="headerbutton">
			<a href=""><span class="hedbtn">マイページ</span></a>
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