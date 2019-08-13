<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style type="text/css">
.comments {
 width:100%;/*自动适应父布局宽度*/
 overflow:auto;
 word-break:break-all;
/*在ie中解决断行问题(防止自动变为在一行显示，主要解决ie兼容问题，ie8中当设宽度为100%时，文本域类容超过一行时，
当我们双击文本内容就会自动变为一行显示，所以只能用ie的专有断行属性“word-break或word-wrap”控制其断行)*/
}
</style>
</head>

<body>
<div class="panel-heading" style="margin: 0 5.8%">
 <div class="panel-titile">
 <h4 align="center" id="lxtm">题目</h4>
 </div>
 <div class="panel-titile">
<textarea name="content" id="lxdaan" style="width: 100%; height: 450px; margin: 0 auto;"></textarea>
 

</div>
<div class="panel-titile" align="center">
<button class="btn btn-warning" id="submitlx">提交答案</button>

</div>
<div hidden="true" id="lxid"></div>
<script type="text/javascript">
var ue=null;
$(document).ready(function(){
	UE.delEditor('lxdaan');
	 ue = UE.getEditor('lxdaan');

});

$(function(){
	var loginUsername=$("#loginUsername").val();
	
	$.ajax({
	      
	     url:"lxtm",
		type:"post",
		datatype:'JSON',
		data:{loginUsername:loginUsername},
		traditional:true,
		success:function(result){
			
			if(result==""){
         alert("您暂时没有发布的练习");
         $("#lxtm").text("您没有已经发布的练习，您可以在富文本编辑器中输入内容但是没有办法提交答案");
         $()
				}else{
          $("#lxtm").text(result.lianxi);
        $("#lxid").text(result.id);
		                     }
			}
	});

	
});

$("#submitlx").click(function(){
	var loginUsername=$("#loginUsername").val();
	var lxdaan=ue.getPlainTxt();
     var lxid=$("#lxid").text();

     if(lxid==""||lxid==null){
         alert("您没有对应的练习请不要提交答案！");}else{
     $.ajax({
	      
	     url:"submitlx",
		type:"post",
		datatype:'JSON',
		data:{loginUsername:loginUsername,lxdaan:lxdaan,lxid:lxid},
		traditional:true,
		success:function(result){
			if(result=="true"){
                    alert("练习提交成功");
				}else if(result=="kong"){

                      alert("不能提交空的答案");
					}else if(result=="daaned"){

                      alert("您已经提交过答案请不要重复提交");
						}else{

                            alert("答案提交失败")
							}

			
			
		}
     });
         }
});


</script>
</body>
</html>