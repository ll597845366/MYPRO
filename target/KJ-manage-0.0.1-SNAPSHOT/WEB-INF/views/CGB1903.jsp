<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 前端框架bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet"/>
<script type="text/javascript" src="js/jquery-2.2.3.min.js">


</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<button id="yanzheng" onclick="yanzheng()" class="btn btn-primary btn-lg">验证</button>
<span><input id="name" type="text"  class="form-control"></span>


<input id="password" type="text"  class="form-control">
<button id="submit" class="btn btn-primary btn-lg">提交</button>

<h1 id="result"></h1>
<script type="text/javascript">

function yanzheng(){
	alert("执行了");
var name=$("#name").val();
	alert(name);
}

$("#submit").click(function(){
var password=$("#password").val();
$.ajax({
    url:"cgb1903password",
    type:"post",
    data:{password:password},
    success:function(result){
        alert(result);
        //<a>awdadw</a>
          //$("#result").text(result);
         
       //text()表示直接将接受到的内容展示在标签中
          //html()他表示接受到的后台所有数据全部以html文本形式展现
          //html函数用于接受后台不完整的页面或者完整页面，
          //如果你只是想展示文本内容就用text()
          var html="<table class='table table-hover'><tr><td>姓名</td><td>性别</td></tr>";
     for(var i=0;i<result.length;i++){
        html= html+"<tr><td>"+result[i].name+"</td><td>"+
                           result[i].id+"</td></tr>";

         }
    html= html+"</table>";
    $("#result").html(html);
       //hashmap后台传过来的数据就是key value  
      
    }
        });

	
});
	

</script>

</body>
</html>