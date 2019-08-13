<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<script type="text/javascript" src="jquery/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<button class="btn btn-danger" id="cgb1904">接受后台数据</button>

<div id="cgb19041"></div>
<script type="text/javascript">
$("#cgb1904").click(function(){

	//ajax技术去接受后台的数据
	$.ajax({
      url:"studenttable",
      type:"post",
      success:function(result){
         //解析后台的json数据
         var table="<table class='table table-condensed'>"+
         "<tr><td>学员id</td><td>姓名</td><td>性别</td><td>成绩</td>"+
         "</tr>";
          for(var i=0;i<result.length;i++){
                table=table+"<tr><td>"+result[i].id+"</td>"+
                "<td>"+result[i].name+"</td>"+"<td>"+result[i].gender+"</td>"+
                "<td>"+result[i].score+"</td>"+
                "<td><button class='btn btn-danger' onclick=tableon(this)>详情信息</button></td></tr>";
              }
          table=table+"</table>";
          //jquery  text():表示我们的内容用文本形式加载  
          // html()表示我们的内容用html文档的形式加载
          $("#cgb19041").html(table);
          }
		});
	
});
function tableon(a){
    //参数列表中的a代表的是按钮本身
    //parent()函数代表获取该对象的父类对象
    //$(a)
    var  id=$(a).parent().parent().find("td:eq(1)").text();
    alert(id);
	
}
</script>
</body>
</html>