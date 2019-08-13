<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="js/jquery.min.js"></script>
<meta charset="utf-8">
<title>恭喜你注册成功</title>
</head>
<body>

<script type="text/javascript">
	setTimeout("javascript:location.href='login'",7000);
</script>
<script type="text/javascript">
	var i = 8;
	function showtime() {
		i = i - 1;
		document.getElementById("CountDown").innerHTML = i;
		if (i > 1) {
			setTimeout('showtime()', 1000);
		}
	}
</script>
<body onload="showtime()" >
	<div id="wrapper" align="center">
		<div id="main">
			<header id="header">
			<h1>
				<span class="icon">!</span><span class="sub">welcome 欢迎您注册成都天府中心周考系统</span>
			</h1>
			</header>
			<h2>${param.userName} 同学您好！</h2>
		
			<div id="content">
			
				<p> <span id="CountDown" style="color:red"></span> 秒后将自动为您跳转到首页</p>
				
			</div>
		</div>
		<div align="center">
		<img alt="center" src="images/kaoshi.jpeg">
		
		
		 </div>
	</div>


</body>
</html>