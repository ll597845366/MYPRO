<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="shortcut icon" href="images/log.jsp" />　
<title >用户注册</title>
 <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/common.css" />
        <link rel="stylesheet" type="text/css" href="css/slide.css" />
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="css/flat-ui.min.css" />
        <link rel="stylesheet" type="text/css" href="css/jquery.nouislider.css">
        <script type="text/javascript"  src="jquery/jquery-3.3.1.min.js"></script>
     
        <style >  
        .abc{color:#1E90FF;}
        </style>
        <style type="text/css">

.divborder{

border-style:solid;

border-width:3px;

border-image: -webkit-linear-gradient(#F80, #2ED) 20 20;

            border-image: -moz-linear-gradient(#F80, #2ED) 20 20;

            border-image: -o-linear-gradient(#F80, #2ED) 20 20;

            border-image: linear-gradient(#F80, #2ED) 20 20;
}

</style>
</head>
<body >



 



<div align="left" style="margin: 0 15% ;border-radius: 6px;" class="divborder" >
<h2 align="center"> WELCOME SIGN</h2>
 <form   action="Resign" method="post" onsubmit="return toVaild()" style="margin: 0 5.8;" ><!-- toVaild()函数验证是否可以提交 -->
    <div  class="input-group"   style="margin: 0 28%">
    <span class="input-group-addon" >账号</span>
    <input  type="text" class="form-control" placeholder="请输登录名，只能是数字英文或两者的组合" name="loginUsername" id="loginUsername" > 
   
</div>
<div style="margin: 0 30%">
<span class="abc" id='errorMsg' ></span>
</div>
<br>
<br>
<div  class="input-group"   style="margin: 0 28%">
 <span class="input-group-addon" >密码</span>
<input type="password" class="form-control" placeholder="请输您要注册的密码" name="password"  id="password">



</div>
<div style="margin: 0 30%">
<span class="abc" id='passwordMsg' ></span>
</div>
<br>
<br>
<div  class="input-group"  style="margin: 0 28%">
  <span class="input-group-addon" >密码</span>
<input type="password" class="form-control" placeholder="再次确认密码" name="repassword" " id="repassword" >


</div>
<div style="margin: 0 30%">
<span class="abc" id='repasswordMsg' ></span>
</div>
<br>
<br>



<div  class="input-group" style="margin: 0 28%" >
 <span class="input-group-addon" >	TEL</span>
<input  type="text" class="form-control" placeholder="请输入正确的电话号码" name="tel" id="tel"  > 

</div>
<div style="margin: 0 30%">
<span class="abc" id='telerrorMsg' ></span>
</div>
<br>
<br>




 
 
 <br>
 
 
 <div align="center">
 <button class="btn btn-primary" type="submit">SUBMIT NOW</button>
 </div>
 
 
 
 
 </form>
</div>

<script type="text/javascript">

//验证两次密码是否是否输入正确
$("#repassword").focusout(function(){

var password=$("#password").val();
var repassword=$("#repassword").val();
if(password==repassword){
	$("#repasswordMsg").html("两次输入一致");
}else if(password!=repassword){
	$("#repasswordMsg").html("两次输入不一致");
	$("#repassword").val("");
}
	
});

//电话合法性验证
$("#tel").focusout(function(){
	var tel=$("#tel").val();
	console.log(tel);
	if(tel!=null&&tel!=''){
		checktel(tel);
	}
});

function checktel(tel){
	$.ajax({
		url:"Retel",
		type:"post",
		datatype:'JSON',
		data:{tel:tel},
		success:function(result){
			console.log(result)
			if(result=="true"){
				
				$("#telerrorMsg").html("电话号码可以使用");
			}else if(result=="false"){
				$("#telerrorMsg").html("电话号码不正确");
				$("#tel").val("").focus();
			}
		},
	
	error:function(){
		alert('检查电话号码出现错误')
	
	}
});
	
}

//账号合法性验证以及异步请求
$("#loginUsername").focusout(function(){
	var loginUsername=$("#loginUsername").val();
	if(loginUsername!=null&&loginUsername!=''){
		checkloginUsername(loginUsername);
	}
});

function checkloginUsername(loginUsername){
	$.ajax({
		url:"ReloginUsername",
		type:"post",
		datatype:'JSON',
		data:{loginUsername:loginUsername},
		success:function(result){
			console.log(result)
			if(result=="true"){
				
				$("#errorMsg").html("该账号可以使用");
			}else if(result=="false"){
				$("#errorMsg").html("该账号已存在");
				$("#loginUsername").val("").focus();
			}else if(result=="error"){
				$("#errorMsg").html("账号中包含非法字符"); 
				$("#loginUsername").val("").focus();
			}
		},
	
	error:function(){
		alert('检查用户是否存在出现错误')
	
	}
});
	}
//密码合法性验证
$("#password").focusout(function(){
	var password=$("#password").val();
	var loginUsername=$("#loginUsername")
	if(password!=null&&password!=''){
		checkpassword(password);
		
	}else{
		alert('密码不能为空');
	}
});

function checkpassword(password){
	$.ajax({
		url:"Repassword",
		type:"post",
		datatype:'JSON',
		data:{password:password},
		success:function(result){
			console.log(result)
			if(result=="low"){
				
				$("#passwordMsg").html("密码安全等级:低");
			}else if(result=="mid"){
				$("#passwordMsg").html("密码安全等级:中");
				
			}else if(result=="error"){
				$("#passwordMsg").html("密码应该是6-18位字符"); 
				$("#password").val("").focus();
			}else if(result=="high"){
				
				$("#passwordMsg").html("密码安全等级：高"); 
			}
		},
	
	error:function(){
		alert('检查密码出现错误');
	
	}
});
	}

//显示隐藏的submit按钮一面客户提交了没有内容的表单

function toVaild(){
var loginUsername=$("#loginUsername").val();
var password=$("#password").val();
var repassword=$("#repassword").val();
var tel=$("#tel").val();

 if(loginUsername!=''&&password!=''&&repassword!=''&&tel!=''){
return true;

	 }else{

alert("请输入完左右的信息后点击提交");
return false;
		 }
	
}
function changepic(){
	
var yzpic=$("#yzpic");
var src=yzpic.attr("src");
yzpic.attr("src",src+"?s=1");
	
}

</script>
</body>
</html>