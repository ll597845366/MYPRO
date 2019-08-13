<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

<title>sys</title>
</head>
<body>
<div class="container-fluid login">
 <div class="row">
   <div  class="col-xs-12 col-sm-12 col-md-8 col-lg-5 col-lg-offset-3">
     <form class="form-horizontal loginForm">
         <h3 class="form-signin-heading">用户登录</h3>
         <div class="form-group">
           <label for="email" class="col-sm-2 col-xs-3 control-label">邮箱</label>
           <div class="col-sm-8 col-xs-8">
             <input type="text" class="form-control"  name="email" placeholder="请输入邮箱"> 
             <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
           </div>

         </div>
         <div class="form-group">
           <label for="password" class="col-sm-2 col-xs-3 control-label">密码</label>
           <div class="col-sm-8 col-xs-8">
             <input type="password" class="form-control" name="password" placeholder="请输入密码">
              <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
           </div>
         </div>
         <div class="form-group">
           <div class="col-sm-offset-2 col-sm-4 col-xs-4 ">
             <div class="checkbox">
               <label>
               <input type="checkbox">记住我
               </label>
             </div>
           </div>
           <div class="col-sm-4 col-xs-4 control-label" >
              <a href="resetPwd.html" id="forget">忘记密码？</a>
           </div>

         </div>
         <div class="form-group">
           <div class="col-sm-12 col-lg-12">
             <button type="button" class="btn btn-primary btn-block" id="submit">登录</button>
           </div>
         </div>
     </form>
     </div>
 </div>

</body>
</html>