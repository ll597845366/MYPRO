<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page  %>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<title >个人空间用户页面</title>
</head>
<body>
<table width="100%" algin="center" border="2px"> 
<tr >
<td colspan="5">
<h2>用户信息</h2>
</td>
</tr>
<tr>
<td>编号</td>
<td>id</td>
<td>姓名</td>
<td>性别</td>
<td>年龄</td>
<td>身份证号</td>
<td>电话</td>
<td>注册时间</td>
<td>修改时间</td>
<td>地址</td>
<td>工作</td>
<td>密码</td>
<td>状态</td>
<td>账号</td>
</tr>

<c:forEach items="${userList}" var="user" varStatus="ststus">

<tr>
<td >序号</td>

<td>${user.id}</td>
<td>${user.userName}</td>
<td>${user.gender}</td>
<td>${user.age}</td>
<td>${user.idCard}</td>
<td>${user.tel}</td>
<td>${user.createdTime}</td>
<td>${user.updatedTime}</td>    
<td>${user.address}</td>
<td>${user.job}</td>
<td>${user.password}</td>
<td>${user.status}</td>
<td>${user.loginUsername}</td>
</tr>



</c:forEach>




</table>
<button type="button" onclick="window.location.href='addList'">增加用户</button>
</body>
</html>