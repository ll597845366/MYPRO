<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>恭喜您注册成功请完善用户资料</title>
</head>
<body>
<form action="insert" method="post">
<h1>完善用户资料</h1>
<table border="1" >
<tr align="center" >
<td width="100px">名称</td>
<td width="200px">内容</td>
</tr>
<tr>
<td>昵称</td>
<td> <input type="text" name="userName"></td>
</tr>
<tr>
<td>性别</td>
<td> <input type="text" name="gender"></td>
</tr>
<tr>
<td>年龄</td>
<td> <input type="text" name="age"></td>
</tr>
<tr>
<td>身份证号</td>
<td> <input type="text" name="idCard"></td>
</tr>
<tr>
<td>联系电话</td>
<td> <input type="text" name="tel"></td>
</tr>
<tr>
<td>地址</td>
<td> <input type="text" name="address"></td>
</tr>
<tr>
<td>工作</td>
<td> <input type="text" name="job"></td>
</tr>


</table>

<div style="padding:10px;">
	<input type="submit" name="ok" value="提交" />
	<input type="button" name="back" value="返回" onclick="history.go(-1)"/>
</div>

</form>
</body>
</html>