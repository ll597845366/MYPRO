<%@ page language="java" contentType="text/html; utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>发布您的考试</title>
</head>
<body>
<h2>发布考试</h2>
<div class="container">

<div class="container">
<label for="exampleInputPassword1" >题目</label>
<textarea name="content" id="fabutimu" style="width: 100%; height: 450px; margin: 0 auto;"></textarea>
</div>
<div class="container">
<label for="exampleInputPassword1" >选项1</label>
<input class="form-control" name="xuanXiang1" id="xuanXiang1">
</div>
<div class="container">
<label for="exampleInputPassword1" >选项2</label>
<input class="form-control" name="xuanXiang2" id="xuanXiang2">
</div>
<div class="container">
<label for="exampleInputPassword1" >选项3</label>
<input class="form-control"  name="xuanXiang3" id="xuanXiang3">
</div>
<div class="container">
<label  >选项4</label>
<input class="form-control" name="xuanXiang4" id="xuanXiang4">
</div>
<div class="container">
<label >正确答案</label>
<input class="form-control" name="daAn" id="daAn">
</div>
<div class="container">
<label  >解析</label>
<input class="form-control" name="jieXi" id="jieXi">
</div>

<div class="container">
<label  >考试名</label>
<input class="form-control" name="kaoshiName" id="kaoshiName">
</div>
<div class="container">
<label >该题分</label>
<input class="form-control"  name="fenshu" id="fenshu">
</div>
<div class="container">
<label >题目序号</label>
<input class="form-control" name="tmid" id="tmid">
</div>

<div class="container">
<label  >考试班级</label>
<input class="form-control" name="kaoshiClass" id="kaoshiClass">
</div>
<button  id="inserttijiao"  class="btn btn-info">提交</button>
<script type="text/javascript">
/* var ue=null;
$(document).ready(function(){
	UE.delEditor('fabutimu');
	 ue = UE.getEditor('fabutimu');

}); */
$("#inserttijiao").click(function(){ 
var timu=$("#fabutimu").val();

var xuanXiang1=$("#xuanXiang1").val();
var xuanXiang2=$("#xuanXiang2").val();
var xuanXiang3=$("#xuanXiang3").val();
var xuanXiang4=$("#xuanXiang4").val();
var daAn=$("#daAn").val();
var jieXi=$("#jieXi").val();
var kaoshiName=$("#kaoshiName").val();
var fenshu=$("#fenshu").val();
var tmid=$("#tmid").val();
var kaoshiClass=$("#kaoshiClass").val();

	 $.ajax({

  	   url:"insertkstm",
 		type:"post",
 		datatype:'JSON',
 		data:{timu:timu,xuanXiang1:xuanXiang1,xuanXiang2:xuanXiang2,xuanXiang3:xuanXiang3,xuanXiang4:xuanXiang4,daAn:daAn,jieXi:jieXi,kaoshiName:kaoshiName,
 	 		fenshu:fenshu,tmid:tmid,kaoshiClass:kaoshiClass},
 		traditional:true,
 		success:function(result){
 	 		if(result=="true"){
 	 			 alert("题目发布成功！");
 	 	 		
 	 	 		}
 	 		else{
alert("题目发布失败");

 	 	 		}

 	 		}

	 });


	
});


</script>



</div>

</body>
</html>