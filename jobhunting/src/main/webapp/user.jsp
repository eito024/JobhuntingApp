<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.ArrayList" 
 %>
<!-- <!DOCTYPE html> -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>利用者ログイン成功</title>

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

.center{
text-align:center;
}
</style>
<!-- ここまでCSS -->
</head>

<body>
<!-- ここからヘッダー -->
<header>
<div>
   <img src="./equal/logo.png"
   alt="サイトのロゴ:クリックするとトップページへ遷移します"
   title="クリックするとトップページへ遷移します"
   width="500px" height="50%">
</div>
</header>
<!-- ここまでヘッダー -->
<body>
<div class="center">
<p>利用者としてログインしました。</p>
<a href="./equal/UserMypage.html">マイページへ</a>

</div>
</body>
</html>