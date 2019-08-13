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
        .abc{color: red;}
        </style>
</head>
<body style="background-image: url('images/sign.jpg');">



 <h1 align="center" style="color: white; font-size:50px " >成都天府中心学员周考注册</h1>
<br>


 <form   action="Resign" method="post" onsubmit="return toVaild()"><!-- toVaild()函数验证是否可以提交 -->

<div  class="input-group" style="margin-left: 570px">
 <span class="input-group-addon" style="width: 85px ; background-color: orange; " >账号</span>
<input  type="text" class="form-control" placeholder="请输登录名，只能是数字英文或两者的组合" name="loginUsername" id="loginUsername" style="width: 300px;" > 
<span class="abc" id='errorMsg' ></span>
</div>
<br>
<br>
<div  class="input-group" style="margin-left: 570px">
 <span class="input-group-addon" style="width: 85px; background-color: orange;">密码</span>
<input type="password" class="form-control" placeholder="请输您要注册的密码" name="password" style="width: 300px;" id="password">
<span class="abc" id='passwordMsg' ></span>


</div>

<br>
<br>
<div  class="input-group" style="margin-left: 570px">
 <span class="input-group-addon" style="width: 85px; background-color: orange;">确认密码</span>
<input type="password" class="form-control" placeholder="再次确认密码" name="repassword" style="width: 300px;" id="repassword">
<span class="abc" id='repasswordMsg' ></span>


</div>

<br>
<br>
<div  class="input-group" style="margin-left: 570px">
 <span class="input-group-addon" style="width: 85px ; background-color: orange; " >姓名</span>
<input  type="text" class="form-control" placeholder="请输入考试姓名，如果姓名正确您将无法得到成绩" name="userName" id="userName" style="width: 300px;" > 
<span class="abc" id='errorMsg' ></span>
</div>

<br>
<br>
<div  class="input-group" style="margin-left: 570px">
 <span class="input-group-addon" style="width: 85px ; background-color: orange; " >电话</span>
<input  type="text" class="form-control" placeholder="请输入正确的电话号码" name="tel" id="tel" style="width: 300px;" > 
<span class="abc" id='telerrorMsg' ></span>
</div>
<br>
<br>
<div  class="input-group" style="margin-left: 570px">
 <span class="input-group-addon" style="width: 85px ; background-color: orange; " >班级</span>
<select class="form-control" name="banji" id="banji">


           
            
            <option>CGB-1903</option>
            <option>CGB-1904</option>
            <option>CGB-1905</option>
            <option>CGB-1906</option>
             <option>CGB-1907</option>
            <option>JSD-1903</option>
			<option>JSD-1904</option>
			<option>JSD-1905</option>
			<option>JSD-1906</option>
			 <option>JSD-1907</option>
		</select>

<span class="abc" id='errorMsg' ></span>
</div>



 
 
 <br>
 <!-- <div align="center"  class="form-inline">
 
 <span> <input  type="text" class="form-control" placeholder="请输入验证码" name="yzm" id="yzm" style="width: 180px;" > 
 <img  src="yzpic" id="yzpic">
 <a id="repic" onclick='changepic()'>看不清？点击刷新</a></span>
 </div>
 <div align="center"> -->
 
 <div align="center">
 <button class="btn btn-primary" type="submit">SUBMIT NOW</button>
 </div>
 </div>
 
 
 
 </form>

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
var userName=$("#userName").val();
 if(loginUsername!=''&&password!=''&&repassword!=''&&tel!=''&&userName!=''){
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
$("#yzm").focusout(function(){



	
});
</script>
</body>
</html>