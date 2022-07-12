<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.ArrayList" import = "businessInfoSearch.BusinessListSearchRecordBean"
    import = "businessInfoSearch.BusinessListSearchInfoArray"   %>
<!-- <!DOCTYPE html> -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>データベース接続のサンプルサーブレットSelect</title>

<!-- css -->
<style type="text/css">
* {
  margin:0;  /*ヘッダーの上部の余白をなくす*/
  box-sizing: border-box;
}
.headerdiv{
  background-color: #32cd32;
}
body {
  font-family:'Avenir','Helvetica, Neue','Helvetica','Arial';
  margin:0;  /*ヘッダーの上部の余白をなくす*/
}

header{
  font-weight:bold;  /*太字設定*/
  display: flex;
  width: 100%;
  background-color: #87cefa;
  align-items: center; /*ボタンの縦の長さをそろえる*/
  margin-bottom:5px; /*ヘッダーからページ内容までの間をあける*/
  padding:10px; /*ヘッダー内のウィンドウからの距離*/
  justify-content: space-around;  /*ボタンの間隔を開ける*/
}
.logo{
  margin-top:0; /*ヘッダーの上部の余白をなくす*/
  cursor: pointer;   /*カーソルを合わせたときに矢印から指マークに変わる*/
}
header.div{
  cursor: pointer;   /*カーソルを合わせたときに矢印から指マークに変わる*/
  list-style: none;  /*リストの点を消す*/
  display: flex;  /*ボタンを横並びにする*/
  justify-content: space-around;  /*ボタンの間隔を開ける*/
  font-size:100px;
  height:100%;
  width:50%;
}
.hedbtn {
  display: inline-block;
  bottom:10px;
  line-height:300%;  /*ボタンの上下の間隔をあける*/
}
.headerbutton a{
  text-decoration: none;  /*ボタンのリンク（文字の下に出るアンカー線）を消す*/
  border: 1px solid #282828;   /*ボタンの枠線*/
  background-color: #32cd32;
  color: #fff;
  font-size: 100%;
  text-align:center;
  padding:10px;
  left:20%;
  flex-basis: auto; /* flexアイテムの幅を自動で調整 */
}
.hedimg{
  position:relative;
  top:20px;
}

/* モーダルCSS */
.modalArea {
  display: none;
  position: fixed;
  z-index: 10; /*サイトによってここの数値は調整 */
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
}

.modalBg {
  width: 100%;
  height: 100%;
  background-color: rgba(30,30,30,0.9);
}

.modalWrapper {
  position: absolute;
  top: 50%;
  left: 50%;
  transform:translate(-50%,-50%);
  height:90%;
  width: 85%;
  padding: 10px 30px;
  background-color: #87cefa;
  overflow : auto;
}
a.closeModal {
  position: absolute;
  top: 1rem;       /*上からの位置*/
  right: 1rem;       /*右からの位置*/
  cursor: pointer;   /*カーソルを合わせたときに矢印から指マークに変わる*/
  background-color:#dc143c;
  border-radius: 30%;   /*ボタンの角を丸くする*/
  text-decoration: none;  /*ボタンのリンク（文字の下に出るアンカー線）を消す*/
  border: 1px solid #282828;   /*ボタンの枠線*/
  font-size:30px;
}
.ok{
  text-decoration: none;  /*ボタンのリンク（文字の下に出るアンカー線）を消す*/
  padding-top: 5px;
  border: 1px solid #282828;   /*ボタンの枠線*/
  font-size:30px;
  background-color:#32cd32;
  /*cursor: pointer;  カーソルを合わせたときに矢印から指マークに変わる*/
  text-align:center;
  border-radius: 2px;
}
a.back{
  text-decoration: none;  /*ボタンのリンク（文字の下に出るアンカー線）を消す*/
  padding-top: 5px;
  right:30%;
  border: 1px solid #282828;  /*ボタンの枠線*/
  position: absolute;
  font-size:30px;
  background-color:#dc143c;
  cursor: pointer;  /*カーソルを合わせたときに矢印から指マークに変わる*/
  border-radius: 2px;
  position:fixed;
  display: flex;  /*ボタンを横並びにする*/
  top:90%;
}

/*ここからポップアップの中身の設定*/
.puldown{
  border: 5px solid #282828;  /*枠線*/
  position: fixed;
  top: 50%;
  left: 50%;
  transform:translate(-50%,-50%);
  height:80%;
  width: 80%;
  padding: 10px 30px;
  background-color: #87cefa;
  overflow : auto;    /*ポップアップの中身が表示領域より多くなる場合、スクロールできるようにする*/
  display:flex;
  flex-flow: column;
  margin:0 0 1em;
  float: left;
  text-align:center;
}
.content {
  	padding:1em;
  	margin:0.5em auto;
  	width:50%;
  	text-align:center; /*真ん中に文字*/
  	padding:20px 0; /*真ん中に文字*/
}
.same-width-list {
	width: 200px; /*選択肢の余白*/
	font-size: 20px; /*文字のサイズ*/
}
.job{
	font-size: xx-large;
	text-align:center;
}
.keywordsyou{
	font-size: 15px;
}
.keyworddai{
	font-size: xx-large;
}

/*ここからトップへ遷移するボタンの設定*/
.movtp{
  text-decoration: none;  /*ボタンのリンク（文字の下に出るアンカー線）を消す*/
  position: fixed;  /*ボタンの位置調整に使用*/
  bottom: 20px;
  right: 20px;
  font-size: 120%;
  display: block;
  color: #fff;
  width: 3.3rem;
  padding: 20px 0;
  text-align: center;
  border-radius: 10px;
  border: 1px solid #282828;   /*ボタンの枠線*/
  background-color: #32cd32;
  text-transform: uppercase;
}

.movtp:hover {
    color: red;
    background-color: #999;
    text-decoration: none;
}
/*ここまでトップへ遷移するボタンの設定*/
/* アコーディオンメニュー全体のサイズ・位置 */
.ac {
  width: 100%;
  position:center; /*真ん中に寄せる*/
  max-width: 1000px;
  margin: 50 auto;
}

/*非表示 クリック領域 */
.ac-parent {
  height: 50px;
  border-bottom: 1px solid #fff;
  background-color: #7cfc00;
  color: #fff;
  text-align: center;
  line-height: 50px;
  cursor: pointer;
}

/* クリックしたら表示される領域 */
.ac-child {
  display: none;
  padding: 2em 1em;
  text-align: center;
}
/* 線を引く*/
.sen{
	border:1px solid #000066;
}

table{
  width: 100%;
  border-collapse: collapse;
}

table tr{
  border-bottom: solid 2px white;
}

table tr:last-child{
  border-bottom: none;
}

table th{
  position: relative;
  text-align: left;
  background-color: #ffb6c1;
  color: white;
  text-align: center;
  padding: 10px 0;
}

table th:after{
  display: block;
  content: "";
  width: 0px;
  height: 0px;
  position: absolute;
  top:calc(50% - 10px);
  right:-10px;
  border-left: 10px solid #ffb6c1;
  border-top: 10px solid transparent;
  border-bottom: 10px solid transparent;
}

table td{
  text-align: left;
  text-align: center;
  background-color: #eee;
  padding: 10px 0;
}
</style>
<!-- ここまでCSS -->
<script src="./共通/js/jquery-2.1.4.min.js"></script>
</head>

<body>
<!-- ここからヘッダー -->
<header>
<div><a href="./企業情報機能/BeforeLoginTop.html" class="logo">  <!-- href内に遷移先を書く -->
   <img src="./共通/logo.png"
   alt="サイトのロゴ:クリックするとトップページへ遷移します"
   title="クリックするとトップページへ遷移します"
   width="500px" height="50%">
</a>
</div>
<div class="headerbutton">
  <a href=""><span class="hedbtn">ログイン</span></a>        <!-- href内に遷移先を書く -->
  <a href=""><span class="hedbtn">ログアウト</span></a>      <!-- href内に遷移先を書く -->
  <a href=""><span class="hedbtn">マイページ</span></a>      <!-- href内に遷移先を書く -->
  <a href=""><span class="hedbtn">企業一覧</span></a>        <!-- href内に遷移先を書く -->
  <a href="BookmarkReferenceServlet"><span class="hedbtn">ブックマーク</span></a>    <!-- href内に遷移先を書く -->
  <a href=""><span class="hedbtn">パスワード変更</span></a>  <!-- href内に遷移先を書く -->
  <a href=""><span class="hedbtn">申し込み</span></a>        <!-- href内に遷移先を書く -->
  <a href="JavaScript:function;"  id="openModal"><img src="./共通/絞り込み.png"   class="hedimg" alt="絞り込み:クリックすると絞り込み"  title="" width="50px" height="50px"></a> <!-- href内に遷移先を書く -->
</div>
<!-- モーダルエリアここから -->
<section id="modalArea" class="modalArea">
  <div id="modalBg" class="modalBg"></div>
  <div class="modalWrapper">
    <div class="modalContents">
    <!-- ポップアップの中身ここから -->
      <!--  ここから-->
		<form action="BusinessListSearchServlet"method="get">
			<div class="content">
				<p>絞り込み</p>
			</div>
			<div class="content">
				<select class="same-width-list" name="selectludustry">
					<option value="">業種</option>
					<option value="情報処理サービス">情報処理サービス</option>
					<option value="通信">通信</option>
					<option value="ソフトウェア">ソフトウェア</option>
					<option value="ハードウェア">ハードウェア</option>
					<option value="インターネット・Web">インターネット・Web</option>
				</select>
			</div>
			<div class="content">
				<select class="same-width-list" name="selectreceiptfield">
					<option value="">求人分野</option>
					<option value="SE・PG">SE・FG</option>
					<option value="運用">SE・FG,運用</option>
					<option value="インフラ">SE・FG,インフラ</option>
					<option value="WEB">SE・FG,WEB</option>
				</select>
			</div>
			<div class="content">
				<select class="same-width-list" name="selectlocation">
					<option value="">所在地</option>
					<option value="北海道">北海道</option>
					<option value="青森">青森</option>
					<option value="岩手">岩手</option>
					<option value="宮城">宮城</option>
					<option value="秋田">秋田</option>
					<option value="山形">山形</option>
					<option value="福島">福島</option>
					<option value="茨城">茨城</option>
					<option value="栃木">栃木</option>
					<option value="群馬">群馬</option>
					<option value="埼玉">埼玉</option>
					<option value="千葉">千葉</option>
					<option value="東京">東京</option>
					<option value="神奈川">神奈川</option>
					<option value="新潟">新潟</option>
					<option value="富山">富山</option>
					<option value="石川">石川</option>
					<option value="福井">福井</option>
					<option value="山梨">山梨</option>
					<option value="長野">長野</option>
					<option value="岐阜">岐阜</option>
					<option value="静岡">静岡</option>
					<option value="愛知">愛知</option>
					<option value="三重">三重</option>
					<option value="滋賀">滋賀</option>
					<option value="京都">京都</option>
					<option value="大阪">大阪</option>
					<option value="兵庫">兵庫</option>
					<option value="奈良">奈良</option>
					<option value="和歌山">和歌山</option>
					<option value="鳥取">鳥取</option>
					<option value="島根">島根</option>
					<option value="岡山">岡山</option>
					<option value="広島">広島</option>
					<option value="山口">山口</option>
					<option value="徳島">徳島</option>
					<option value="香川">香川</option>
					<option value="愛媛">愛媛</option>
					<option value="高知">高知</option>
					<option value="福岡">福岡</option>
					<option value="佐賀">佐賀</option>
					<option value="長崎">長崎</option>
					<option value="大分">大分</option>
					<option value="熊本">熊本</option>
					<option value="宮崎">宮崎</option>
					<option value="鹿児島">鹿児島</option>
					<option value="沖縄">沖縄</option>
				</select>
			</div>
			<div class="content">
				<select class="same-width-list" name="sort">
					<option value="00">並び替え</option>
					<option value="01">給料(2年)</option>
					<option value="02">給料(3年)</option>
					<option value="03">給料(4年)</option>
					<option value="04">新着</option>
					<option value="05">受付人数</option>
				</select>
			</div>
			<div class="content">
				<input type="radio"  name="order"  value="0">降順
				<input type="radio"  name="order"  value="1" checked="checked">昇順
			</div>
			<div class="content">
				<select class="same-width-list" name="selectexistence">
					<option value="">上場の有無</option>
					<option value="有">有</option>
					<option value="無">無</option>
				</select>
			</div>
			<div class="content">
				<select class="same-width-list" name="selectseverancepay">
					<option value="">退職金の有無</option>
					<option value="有">有</option>
					<option value="無">無</option>
				</select>
			</div>
			<div class="content">
				<select class="same-width-list" name="selectovertimepay">
					<option value="">残業代の扱い</option>
					<option value="みなし残業">みなし残業</option>
					<option value="その都度">その都度</option>
				</select>
			</div>
				<div class="content">
				<select class="same-width-list" name="selectqualificationallownce">
					<option value="">資格手当</option>
					<option value="有">有</option>
					<option value="無">無</option>
				</select>
			</div>
			<div class="content">
				<select class="same-width-list" name="selectholiday">
					<option value="">休日</option>
					<option value="週休二日制">週休二日制</option>
					<option value="完全週休二日制">完全週休二日制</option>
				</select>
			</div>
			<div class="content">
				<input type="submit" class="ok"  value="検索">
			</div>
		</form>
		<form action="BusinessListSearchFreewordServlet"method="get">
			<div class="content">
				<p>キーワード</p>
				<input class="keywordsyou" type="text"name="keyword" size="20"value="">
			</div>
			<div class="content">
				<input type="submit" class="ok" value="検索">
			</div>
		</form>
		</div>
      <!--  <a href ="" type="submit" class="ok" >検索</a>
      <a href ="" class="back">戻る</a>
      <!-- ポップアップの中身ここまで -->
	</div>
	<a href =""  class="closeModal">×</a>
</section>
<!-- モーダルエリアここまで -->
</header>
<!-- ここまでヘッダー -->
<!-- ここから<nav>の中はページの内容 -->
<%String a; %>
<jsp:useBean id="BLSIA" class="businessInfoSearch.BusinessListSearchInfoArray" scope="session" />
<%
ArrayList<BusinessListSearchRecordBean> list =  BLSIA.getBusinessListSearchArrayBean();
%>
<%
for(BusinessListSearchRecordBean record : list) {
%>
<nav>
<dl class="ac">
	<div class="sen">
		<table>
            <tr>
                <th>業種：</th>
                <td><%=record.getLudustry() %></td>
                <th>求人分野：</th>
                <td><%=record.getReceiptField() %></td>
                <th>PDF:</th>
                <td>○○.pdf</td>
                <th>お気に入り</th>
                <td>
                	<FORM action="BookmarkServlet"method="get"target=sendMessage>
						<button type="submit" value=<%=record.getBusinessNumber() %> name="number"  class="button" data-text-clicked="★">☆</button>
					</FORM>
					<iframe name="sendMessage" style="width:0px;height:0px;border:0px;"></iframe> <!-- これで遷移しない -->
                </td>
            	</tr>
            	<tr>
                	<th>企業名：</th>
                	<td><%=record.getBusinessName() %></td>
               	 	<th>所在地：</th>
                	<td><%=record.getLocation() %></td>
					<th>上場：</th>
                	<td><%=record.getExistence() %></td>
            	</tr>
            	<tr>
            		<th>給料2年制：</th>
            		<td><%=record.getsalary2() %></td>
            		<th>給料3年制：</th>
            		<td><%=record.getsalary3() %></td>
            		<th>給料4年制：</th>
            		<td><%=record.getsalary4() %></td>
        	    </tr>
    	</table>
    	<dt class="ac-parent">詳細非表示</dt>
    	<dd class="ac-child">
    	<table>
            	<tr>
            		<th>企業番号：</th>
                	<td><%=record.getBusinessNumber() %></td>
                	<th>会社全体受付人数：</th>
                	<td><%=record.getReceptionistsNumber() %></td>
            	</tr>
            	<tr>
                	<th>業務内容</th>
                	<td><%=record.getBusinessContent() %></td>
                	<th>従業員数：</th>
                	<td><%=record.getnumberOfemployees() %></td>
            	</tr>
            	<tr>
				   <th>郵便番号：</th>
           	       <td><%=record.getPostalcode() %></td>
             	   <th>ホームページ：</th>
                	<td><%=record.getHomepage() %></td>
            	</tr>
            	<tr>
            		<th>残業代の扱い：</th>
            	    <td><%=record.getovertimepay() %></td>
         	        <th>休日：</th>
                	<td><%=record.getholiday() %></td>
            	</tr>
            	<tr>
       	         	<th>人事部氏名：</th>
        	        <td><%=record.gethumanresourcesdepartmntname() %></td>
            	    <th>人事部メールアドレス：</th>
                	<td><%=record.gethumanresourcesdepartmntmailaddress() %></td>
            	</tr>
            	<tr>
            		<th>退職金の有無：</th>
             	   <td><%=record.getseverancepay() %></td>
                	<th>資格手当の有無：</th>
            	    <td><%=record.getqualificationallownce() %></td>
        	    </tr>
    	    </table>
	    </dd>
	</div>
</dl>

<%
}
%>
<body>
<a href="BeforeLoginTop.html">メニューへ戻る</a>

<a href="" class="movtp">▲</a>
</nav>
<!-- ここまで<nav>の中はページの内容 -->

<!-- jQueryここから -->
<script>
$(function () {
    $('.ac-parent').on('click', function () {
    $(this).next().slideToggle();
  });
});
$(function () {
	  $('#openModal').click(function(){
	    $('#modalArea').fadeIn();
	  });
	  $('#closeModal,#modalBg,#back').click(function(){
	    $('#modalArea').fadeOut();
	});
});
$(function(){
    $('.button').on('click', function(event){
        $(this).toggleClass('active');

        if($(this).hasClass('active')){
            var text = $(this).data('text-clicked');
        }

        $(this).html(text);
    });
});

</script>
<!-- jQueryここまで -->
</body>
</html>



<!-- <table border="1">
<tr><th>企業番号</th><th>企業名</th><th>電話番号</th><th>事業内容</th><th>郵便番号</th><th>所在地</th><th>業種</th><th>上場の有無</th><th>受付人数</th><th>ホームページ</th><th>求人分野</th></tr>
<%
for(BusinessListSearchRecordBean record : list) {
%>
	<tr>
	<td><%=record.getBusinessNumber() %></td>
	<td><%=record.getBusinessName() %></td>
	<td><%=record.getTellNumber() %></td>
	<td><%=record.getBusinessContent() %></td>
	<td><%=record.getPostalcode() %></td>
	<td><%=record.getLocation() %></td>
	<td><%=record.getLudustry() %></td>
	<td><%=record.getExistence() %></td>
	<td><%=record.getReceptionistsNumber() %></td>
	<td><%=record.getHomepage() %></td>
	<td><%=record.getsalary2() %></td>
	<td><%=record.getsalary3() %></td>
	<td><%=record.getsalary4() %></td>
	<td><%=record.getnumberOfemployees() %></td>
	<td><%=record.gethumanresourcesdepartmntname() %></td>
	<td><%=record.gethumanresourcesdepartmntmailaddress() %></td>
	<td><%=record.getseverancepay() %></td>
	<td><%=record.getovertimepay() %></td>
	<td><%=record.getqualificationallownce() %></td>
	<td><%=record.getholiday() %></td>
	</tr>
<%
}
%>
</table> -->

<%--request.getParameter("selectlocation"); --%>