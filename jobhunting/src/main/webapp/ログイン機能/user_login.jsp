<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ログインフォーム</title>
<link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<!-- ここからヘッダー -->
<header>
<div><a href="../BeforeLoginTop.html" class="logo">  <!-- href内に遷移先を書く -->
   <img src="../equal/logo.png"  
   alt="サイトのロゴ:クリックするとトップページへ遷移します" 
   title="クリックするとトップページへ遷移します" 
   width="500px" height="50%">
</a>  
</div>
</header>
<!-- ここまでヘッダー -->
<body>
<div class="center"> <!--div内の要素を中央ぞろえにする  -->
   <form name="Login" method="post" action="<%= request.getContextPath() %>/UserLoginServlet">
     <div> 
       <h1>ログイン画面</h1>
       <%
       	String error = (String)request.getAttribute("error");
    	if (error != null) {
	   %>
        <p style="color:red; font-size: larger;"><%= error %></p>
       <%   } %>
       <p>ユーザIDとパスワードを入力してください。</p>	 
       <h2>ログインするアカウント</h2>
   	   <p class=radio>
        <input type="radio" name="role" value="1" required>管理者でログインする
        <br>
	    <input type="radio" name="role" value="2" required>ユーザーでログインする
	   </p>
	   <h2>ユーザID</h2>
	   <input type="text"  name="id" size="60" maxlength="32" autocomplete="OFF" required/> <!-- sizeとmaxlengthは変更可 -->
	   <br>
	   <h2>パスワード</h2>
	   <input type="password" name="password" size="40" maxlength="32" autocomplete="OFF" required/> <!-- sizeとmaxlengthは変更可。maxlengthは6文字以上 -->
	   <br>
	   <br>
	 </div>
	 <div class=button>
	   <input type="submit" value="ログイン" class="yes">
       <a href ="../BeforeLoginTop.html" class="no">戻る</a>	  
	 </div>
	 <br>
	 <br>
	</form>	  

</div> 
<style>
  * {
    margin:0;  /*ヘッダーの上部の余白をなくす*/
    box-sizing: border-box;
  }
  
  body {
    font-family:'Avenir','Helvetica, Neue','Helvetica','Arial';
  }
/*ここからヘッダーのCSS*/
  header{
    font-weight:bold;  /*太字設定*/
    display: flex;
    width: 100%;
    height: 50%;
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
/*ここまでヘッダーのCSS*/
/*ここから本文*/
  .center{
    padding-top:3%;
    text-align:center;
    line-height:300%;  /*ボタンの上下の間隔をあける*/
  }
  .center * {
  	margin-right: auto;
  	margin-left: auto;
   }
  input[type=text],input[type=password]{
    width:50%;
    height:150%;
    font-size:30px;
  }
  
  .radio{
    border:0.5px solid #282828;   /*ボタンの枠線*/
    width:50%;
  }
  
  input[type=radio]{
    left:25%;
  }
  
  .button{
    text-align:center;
    display: inline-block;
    flex-basis: auto; /* flexアイテムの幅を自動で調整 */
  }
  
  .yes{
    color: #fff;
    text-decoration: none;  /*ボタンのリンク（文字の下に出るアンカー線）を消す*/
    padding:10px;
    left:25%;
    border: 1px solid #282828;   /*ボタンの枠線*/
    position: absolute;
    font-size:30px;
    background-color:#32cd32;
    cursor: pointer;  /*カーソルを合わせたときに矢印から指マークに変わる*/
    border-radius: 2px;
    position:fixed;
    display: flex;  /*ボタンを横並びにする*/
  }

  a.no{
    color: #fff;
    text-decoration: none;  /*ボタンのリンク（文字の下に出るアンカー線）を消す*/
    padding:10px;
    right:25%;
    border: 1px solid #282828;  /*ボタンの枠線*/
    position: absolute;
    font-size:30px;
    background-color:#dc143c;
    cursor: pointer;  /*カーソルを合わせたときに矢印から指マークに変わる*/
    border-radius: 2px;
    position:fixed;
    display: flex;  /*ボタンを横並びにする*/
    
  }
/*ここまで本文*/
</style>
</body>
</html>