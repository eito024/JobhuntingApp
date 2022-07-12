<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList"
	import="businessInfoChange.BusinessInfoChangeServlet"
	import="businessInfoChange.BusinessInfoChangeRecordBean"
	import="java.util.LinkedList"
	import="java.util.List"%>
<html lang="jp">
<head>
<title>企業情報変更</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="reset.css">
<link rel="stylesheet" href="form.css">
<script src="https://ajaxzip3.github.io/ajaxzip3.js" charset="UTF-8"></script>
<script src="/jquery-2.1.4.min.js" charset="UTF-8"></script>
<script src="js/ajaxzip3.js" charset="UTF-8"></script>
<%@ page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="record"
	class="businessInfoChange.BusinessInfoChangeRecordBean" scope="session" />
<%
BusinessInfoChangeRecordBean infoRecord =  record;

%>
<%!
String getChecked(String str1,String str2) {
		
	if(str1.equals(str2)){
		return "checked";
	}else{
		return "";
	}
		
}

String getSelected(String str1,String str2) {
	
	if(str1.equals(str2)){
		return "selected";
	}else{
		return "";
	}
		
}

String getSplit(String str1){
	
	String kekka = "";
	String tell[];
	tell = str1.split("-");
	
	for(String tell1 : tell){
		
	kekka = kekka + tell1;
	
	}
	return kekka;
	
}

String[] getPost(String str1){
	
	String kekka = "";
	String Post[];
	Post = str1.split("-");
	
	
	return Post;
	
}
%>


<style>
@charset "UTF-8";

header {
	margin-top: 30px;
	color: #43A047;
}

hr {
	border-width: 3px;
	border-color: #43A047;
}

h1 {
	font-size: 25px;
	font-weight: bold;
	margin: 0;
	text-align: center;
}

.align-light {
	text-align: right;
}

.form-group {
	margin-bottom: 35px;
}

footer p {
	text-align: center;
}

input:required {
	background: #ffcdd2;
}

input[type="email"]:invalid {
	background: #ffcdd2;
}

input:valid {
	background: transparent;
}

input:focus {
	background: #DCEDC8;
}

* {
	box-sizing: border-box;
}

.headerdiv {
	background-color: #32cd32;
}

body {
	font-family: 'Avenir', 'Helvetica, Neue', 'Helvetica', 'Arial';
	margin: 0; /*ヘッダーの上部の余白をなくす*/
}

.regist {
	text-align: center;
	border: solid;
	width: 50%;
	border-color: #666666;
	margin: auto;
}

header {
	font-weight: bold; /*太字設定*/
	display: flex;
	width: 100%;
	height: 50%;
	background-color: #87cefa;
	align-items: center; /*ボタンの縦の長さをそろえる*/
	margin-bottom: 5px; /*ヘッダーからページ内容までの間をあける*/
	padding: 10px; /*ヘッダー内のウィンドウからの距離*/
	justify-content: space-around; /*ボタンの間隔を開ける*/
}

.logo {
	margin-top: 0; /*ヘッダーの上部の余白をなくす*/
	cursor: pointer; /*カーソルを合わせたときに矢印から指マークに変わる*/
}

header.div {
	cursor: pointer; /*カーソルを合わせたときに矢印から指マークに変わる*/
	list-style: none; /*リストの点を消す*/
	display: flex; /*ボタンを横並びにする*/
	justify-content: space-around; /*ボタンの間隔を開ける*/
	font-size: 100px;
	height: 100%;
	width: 50%;
}

.hedbtn {
	display: inline-block;
	bottom: 10px;
	line-height: 300%; /*ボタンの上下の間隔をあける*/
}

.headerbutton a {
	text-decoration: none; /*ボタンのリンク（文字の下に出るアンカー線）を消す*/
	border: 1px solid #282828; /*ボタンの枠線*/
	background-color: #32cd32;
	color: #fff;
	font-size: 100%;
	text-align: center;
	padding: 10px;
	left: 20%;
	flex-basis: auto; /* flexアイテムの幅を自動で調整 */
}

.hedclose {
	text-decoration: none; /*ボタンのリンク（文字の下に出るアンカー線）を消す*/
	border: 1px solid #282828; /*ボタンの枠線*/
	background-color: #32cd32;
	color: #fff;
	font-size: 100%;
	text-align: center;
	padding: 10px;
	left: 5px;
	position: fixed; /*ボタンの位置調整に使用*/
}
/*ここからトップへ遷移するボタンの設定*/
.movtp {
	text-decoration: none; /*ボタンのリンク（文字の下に出るアンカー線）を消す*/
	position: fixed; /*ボタンの位置調整に使用*/
	bottom: 20px;
	right: 20px;
	font-size: 120%;
	display: block;
	color: #fff;
	width: 3.3rem;
	padding: 20px 0;
	text-align: center;
	border-radius: 10px;
	border: 1px solid #282828; /*ボタンの枠線*/
	background-color: #32cd32;
	text-transform: uppercase;
}

.movtp:hover {
	color: red;
	background-color: #999;
	text-decoration: none;
}

label {
	display: block;
}

label.required:after {
	content: "必須";
	background-color: #f0ad4e;
	color: #fff;
	font-size: 12px;
	font-weight: bold;
	min-width: 10px;
	padding: 3px 7px;
	margin: 0px 5px;
	line-height: 1;
	vertical-align: middle;
	white-space: nowrap;
	text-align: center;
	border-radius: 10px;
	display: inline-block;
}

p.required:after {
	content: "必須";
	background-color: #f0ad4e;
	color: #fff;
	font-size: 12px;
	font-weight: bold;
	min-width: 10px;
	padding: 3px 7px;
	margin: 0px 5px;
	line-height: 1;
	vertical-align: middle;
	white-space: nowrap;
	text-align: center;
	border-radius: 10px;
	display: inline-block;
}

/*ここまでトップへ遷移するボタンの設定*/
</style>
</head>
<body>
	<div class="container">
		<header>
			<div>
					<img src="./equal/logo.png" alt="サイトのロゴ" width="500px" height="50%">
			</div>
			<div class="headerbutton">
				<a href="./equal/AdminMypage.html"><span class="hedbtn">マイページ</span></a>
				<!-- href内に遷移先を書く -->
			</div>
		</header>
	</div>

	<hr>

	<div class="regist">
		<form action="BusinessChangeExcuteServlet" method="POST"
			class="row">
			<div class="col-sm-8 col-sm-offset-2">
				<br>
				
				<input type="hidden" name="businessNumber" value="<%=infoRecord.getBusinessNumber() %>">


				<div>
					<label class="required" for="textBox">企業名</label> 
					<input type="text" name="businessName"
						value="<%=infoRecord.getBusinessName() %>" id="textBox"
						placeholder="" required>
				</div>

				<br>

				<div class="form-group">
					<label class="required" for="textBox">電話番号</label>
					<input type="text" name="tellNumber"
						value ="<%=	infoRecord.getTellNumber() %>" id="textBox"
						placeholder="例：080-1234-5678" required>
				</div>

				<!-- ▼郵便番号入力フィールド(3桁+4桁) -->
				<div>
					<p class="required">〒郵便番号</p>
					<input type="text" name="postalcode"
						value="<%= infoRecord.getPostalcode() %>" id="textBox"
						placeholder="例：123-4567" required>
					<br>

					<!-- ▼住所入力フィールド(都道府県) -->

					<br>
					<p>所在地（郵便番号から自動入力）</p>
					<input type="text" name="location"
						value="<%=infoRecord.getLocation() %>" size="48"
						placeholder="例：鹿児島県鹿児島市○○町○○-○" required>
				</div>

				<br> <br>
				<div class="form-group">
					<label class="required" for="job"><span class="job"></span>
						業種</label> <select id="job" name="ludustry" class="form-control">
						<option value="">選択してください</option>
						<option value="通信"
						<%=
								getSelected(infoRecord.getLudustry(),"通信")
							%> 
							>通信</option>
						<option value="インターネット・Web"
						<%=
								getSelected(infoRecord.getLudustry(),"インターネット・Web")
							%> 
							>インターネット・Web</option>
						<option value="ソフトウェア"
						<%=
								getSelected(infoRecord.getLudustry(),"ソフトウェア")
							%> 
							>ソフトウェア</option>
						<option value="ハードウェア"
						<%=
								getSelected(infoRecord.getLudustry(),"ハードウェア")
							%> 
							>ハードウェア</option>
						<option value="情報処理サービス"
						<%=
								getSelected(infoRecord.getLudustry(),"情報処理サービス")
							%> 
							>情報処理サービス</option>
					</select>
				</div>

				<div class="form-group">
					<label class="required"><span class="businesscontent"></span>
						上場の有無</label>
					<div>
						<label class="radio-inline">
						 <input type="radio"
							name="existence" value="有" required 
							<%=
								getChecked(infoRecord.getExistence(),"有")
							%> 
							>有
							<input type="radio" name="existence" value="無" required 
							<%=
								getChecked(infoRecord.getExistence(),"無")
							%>
							 >無
						</label>
					</div>
				</div>

				<div class="form-group">
					<label class="required" for="receptionistsNumber"><span
						class="receptionistsNumber"></span> 募集人数</label> <input type="number"
						value="<%=infoRecord.getReceptionistsNumber() %>" min="1" max="99999" step="1" id="receptionistsNumber"
						name="receptionistsNumber" class="form-control" placeholder="例：〇人"
						required>
				</div>

				<div class="form-group">
					<label class="required" for="homepage"><span
						class="homepage"></span> ホームページ</label> <input type="text" value ="<%=infoRecord.getHomepage() %>" id="homepage"
						name="homepage" class="form-control" size="35"
						placeholder="例：https://ooo.com" required>
				</div>

				<div class="form-group">
					<label class="required" for="receiptField"><span
						class="receiptField"></span> 求人分野</label> <input type="text" value="<%=infoRecord.getReceiptField() %>"
						id="receiptField" name="receiptField" class="form-control"
						placeholder="例:情報処理" required>
				</div>

				<div class="form-group">
					<label class="required" for="salary2"><span class="salary2"></span>
						給料2年制</label> <input type="text" value="<%=infoRecord.getSalary2() %>" id="salary2" name="salary2"
						class="form-control" placeholder="例:￥〇〇" required>
				</div>

				<div class="form-group">
					<label class="required" for="salary3"><span class="salary3"></span>
						給料3年制</label> <input type="text"  value="<%=infoRecord.getSalary3() %>" id="salary3" name="salary3"
						class="form-control" placeholder="例:￥〇〇" required>
				</div>

				<div class="form-group">
					<label class="required" for="salary4"><span class="salary4"></span>
						給料4年制</label> <input type="text" value="<%=infoRecord.getSalary4() %>" id="salary4" name="salary4"
						class="form-control" placeholder="例:￥〇〇" required>
				</div>

				<div class="form-group">
					<label class="required" for="numberOfEmployees"><span
						class="numberOfEmployees"></span> 従業員数</label> <input type="number"
						value="<%=infoRecord.getNumberOfemployees() %>" size="10" step="1" id="numberOfEmployees"
						name="numberOfEmployees" class="form-control" placeholder="例：〇人"
						required>
				</div>

				<div class="form-group">
					<label class="required" for="humanResourcesDepartmentName"><span
						class="humanResourcesDepartmentName"></span> 人事部氏名</label> <input
						type="text" id="humanResourcesDepartmentName"
						name="humanResourcesDepartmentName" value="<%=infoRecord.getHumanresourcesdepartmntname() %>" class="form-control"
						placeholder="例:〇〇〇〇" required>
				</div>

				<div class="form-group">
					<label class="required" for="humanResourcesDepartmentMailAddress"><span
						class="humanResourcesDepartmentMailAddress"></span> 人事部メールアドレス</label> <input
						type="text" id="humanResourcesDepartmentMailAddress"
						name="humanResourcesDepartmentMailAddress" value="<%=infoRecord.getHumanresourcesdepartmntmailaddress() %>" class="form-control"
						placeholder="例:〇〇@kcska.ac" required>
				</div>

				<div class="form-group">
					<label class="required"><span class="severancePay"></span>
						退職金の有無</label>
					<div>

						<label class="radio-inline"> <input type="radio"
							name="severancePay" value="有" required
							<%=
								getChecked(infoRecord.getSeverancepay(),"有")
							%> 
							>有 <input
							type="radio" name="severancePay" value="無" required 
							<%=
								getChecked(infoRecord.getSeverancepay(),"無")
							%> 
							>無
						</label>
					</div>
				</div>

				<div class="form-group">
					<label class="required"><span class="overtimePay"></span>
						残業代の扱い</label>
					<div>

						<label class="radio-inline"> <input type="radio"
							name="overtimePay" value="その都度" required
							<%=
								getChecked(infoRecord.getOvertimepay(),"その都度")
							%> 
							>その都度<input
							type="radio" name="overtimePay" value="みなし残業" required 
							<%=
								getChecked(infoRecord.getOvertimepay(),"みなし残業")
							%> 
							>みなし残業
						</label>
					</div>
				</div>

				<div class="form-group">
					<label class="required"><span class="qualificationAllOwnce"></span>
						資格手当の有無</label>
					<div>

						<label class="radio-inline"> <input type="radio"
							name="qualificationAllOwnce" value="有" required 
							<%=
								getChecked(infoRecord.getQualificationallownce(),"有")
							%> 
							>有
							 <input type="radio" name="qualificationAllOwnce" value="無" required 
							 <%=
								getChecked(infoRecord.getQualificationallownce(),"無")
							%> 
							>無
						</label>
					</div>
				</div>

				<div class="form-group">
					<label class="required"><span class="q1_html"></span> 休日</label>
					<div class="checkbox">
						 <label class="radio-inline"> <input type="radio" id="q1_html" name="holiday"
							value="完全週休二日制"
							<%=
								getChecked(infoRecord.getHoliday(),"完全週休二日制")
							%>
							>完全週休二日制
							<br> 
							<input type="radio" id="q1_html"
							name="holiday" value="週休二日制"
							<%=
								getChecked(infoRecord.getHoliday(),"週休二日制")
							%>
							>週休二日制
						</label>
					</div>

				</div>

				<div class="form-group">
					<label class="required" for="businessContent"><span
						class="businessContent"></span> 事業内容</label> <br>
					<textarea name="businessContent" class="form-control" rows="5"
						cols="50" placeholder="例：やる気と根性の尾辻商社" required><%=infoRecord.getBusinessContent() %></textarea>
				</div>

				<div>
					<input class="submitbutton" type="submit"
						style="width: 10%;" padding:10px; font-size:17px;" value="変更" />
				</div>
				<br>

			</div>
		</form>
	</div>
	<br>
   
	<br>
	<hr>

	<div class="container">
		<footer>
			<p>&copy; D.</p>
		</footer>
	</div>


	<script>
		$(function() {
			var navPos = $("nav").offset().top;
			//"ヘッダーを非表示"をクリック
			$('.hedclose').on("click", function() {
				//header要素を開閉
				$('header').toggle("slow");
				$("nav").css("position", "static");
			});

		});
	</script>
</body>
</html>

