<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

<table class="table table-striped">
<tr><td><h5>知识点</h5></td><td><h5 >知识点复习进度</h5></td>

<td><h5 >点击开始复习</h5></td></tr>
<tr>
<td><h5>JAVA基础</h5></td>
<td>
 <div class="progress" style="width: 70%;height: 35px;">

  <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 100%" id="jindubar1">
 <h5 id="type1up"></h5>
  </div>
 <h5 id="type1down"></h5>
</div>
</td>
<td>
<button class="btn btn-primary" type="button" name="1" onclick="startfx(this)">
开始面试复习<span class="glyphicon glyphicon-paperclip" ></span>
</button>
</td>
</tr>



<tr>
<td><h5>JAVAweb&HTML$JAVASCRIPT</h5></td>
<td>
<div class="progress" style="width: 70%;height: 35px;">
  <div class="progress-bar progress-bar-info progress-bar-striped" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 100%;" id="jindubar2">
    <h5 id="type2up">  </h5>
  </div>
  <h5 id="type2down"> </h5>
</div>
</td>
<td> <button class="btn btn-primary" type="button" name="2" onclick="startfx(this)">
 开始面试复习<span class="glyphicon glyphicon-paperclip"></span>
</button> </td>
</tr>
<tr>
<td><h5>数据库部分</h5></td>
<td>
<div class="progress" style="width: 70%;height: 35px;">
  <div class="progress-bar progress-bar-warning progress-bar-striped" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;" id="jindubar3">
    <h5 id="type3up"> </h5>
  </div>
  <h5 id="type3down"> </h5>
</div>
</td>
<td>
<button class="btn btn-primary" type="button" name="3" onclick="startfx(this)">
   开始面试复习<span class="glyphicon glyphicon-paperclip"></span>
</button>
</td>
</tr>
<td><h5>框架部分</h5></td>
<td>
<div class="progress" style="width: 70%;height: 35px;">

  <div class="progress-bar progress-bar-danger progress-bar-striped" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 100%;" id="jindubar4">
   <h5 id="type4up"> </h5>
  </div>
  <h5 id="type4down"> </h5>
</div>
</td>
<td>
<button class="btn btn-primary" type="button" name="4" onclick="startfx(this)">
    开始面试复习<span class="glyphicon glyphicon-paperclip"></span>
</button>
</td>
<tr>
<td><h5>微服务&高并发</h5></td>
<td>

 <div class="progress" style="width: 70%;height: 35px; " >

  <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 100%" id="jindubar5">
 <h5 id="type5up"> </h5>
  </div>
 <h5 id="type5down"> </h5>
</div>
</td>
<td>
<button class="btn btn-primary" type="button"  name="5" onclick="startfx(this)">
 开始面试复习<span class="glyphicon glyphicon-paperclip"></span>
</button>
</td>
</tr>
</table>


<div class="modal fade bs-example-modal-lg" id="mstmxq" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
     <h3 class="modal-title" >面试复习</h3s>
      </div>
      <div class="modal-body">
     <h5 class="modal-title" id="mstmquestion"></h5>
      <div class="modal-body">
      <h6 id="mstmanswers"></h6>
      </div>
    
      <div class="modal-footer">
      <span hidden="true" id="mstmpid"></span>
      <span hidden="true" id="mstmtype"></span>
        <button type="button" class="btn btn-primary"  id="premstm">PREVIOUS<--复习上一题</button>
        <button type="button" class="btn btn-primary"  id="nextmstm">我已复习完毕:--->NEXT</button>
        <button type="button" class="btn btn-primary" data-dismiss="modal" >Close Model</button>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
$(function(){
	var loginUsername=$("#loginUsername").val();
	$.ajax({url:"myfxjd",
		type:"post",
		data:{loginUsername:loginUsername},
		success:function(result){
          if(result.length==0||result==null||result==""){
          $("#type1down").text("复习进度0%");
          $("#type2down").text("复习进度0%");
          $("#type3down").text("复习进度0%");
          $("#type4down").text("复习进度0%");
          $("#type5down").text("复习进度0%");
          $("#jindubar1").width("0%");
          $("#jindubar2").width("0%");
          $("#jindubar3").width("0%");
          $("#jindubar4").width("0%");
          $("#jindubar5").width("0%");
              }else{
                  if(result.length==5){
                for(var i=0;i<result.length;i++){
                    
                    
                      var barjd=result[i].pid/result[i].mstmzs;
                      if(barjd>0.5){
                          
                          $("#type"+result[i].type+"up").text("复习进度"+parseInt(barjd*100)+"%");
                          $("#jindubar"+result[i].type).css("width",(parseInt(barjd*100)+"%"));
                          }else{
                       
                        	  $("#type"+result[i].type+"down").text("复习进度"+parseInt(barjd*100)+"%");
                              $("#jindubar"+result[i].type).css("width",(parseInt(barjd*100)+"%"));
                              }
                    
                    }
                  }else{
                       var arr=[1,2,3,4,5];
                    for(var i=0;i<result.length;i++){
                       var type=result[i].type;
                       for(var j=0;j<arr.length;j++){
                            if(type==arr[j]){
                              arr[j]=0;
                              var barjd=result[i].pid/result[i].mstmzs;
                              if(barjd>0.5){
                                  
                                  $("#type"+result[i].type+"up").text("复习进度"+parseInt(barjd*100)+"%");
                                  $("#jindubar"+result[i].type).css("width",(parseInt(barjd*100)+"%"));
                                  }else{
                               
                                	  $("#type"+result[i].type+"down").text("复习进度"+parseInt(barjd*100)+"%");
                                      $("#jindubar"+result[i].type).css("width",(parseInt(barjd*100)+"%"));
                                      }

                                }

                           }


                        }
                    for(var i=0;i<arr.length;i++){
                    if(arr[i]!=0){
                    	$("#type"+arr[i]+"down").text("复习进度0%");
                        $("#jindubar"+arr[i]).width("0%");
                        }

                        }

                      }


                  }
			}})
});

function startfx(a){
	var loginUsername=$("#loginUsername").val();
	var type=$(a).attr("name");
	$.ajax({
          url:"mstmfx",
          type:"post",
          dataType:"json",
          data:{loginUsername:loginUsername,type:type},
          success:function(result){
                if(result==null||result==""){
                      $("#mstmxq").modal('hide');
                      alert("已经没有更多的面试题目了，恭喜你该阶段复习完毕！");
                    }else{
                       
                      $("#mstmquestion").html(result.question);
                      $("#mstmanswers").html(result.answers);
                    $("#mstmpid").text(result.pid);
                    $("#mstmtype").text(result.type);
                      $("#mstmxq").modal('show');
                        }
                  
              }



		});	
}

function mstmgo(loginUsername,pid,type){
$.ajax({


	url:"mstmgo",
	type:"post",
	dataType:"json",
	data:{loginUsername:loginUsername,pid:pid,type:type},
	success:function(result){
		
		 if(result.pid==pid&&(result.question==""||result.question==null)){
             
             alert("已经没有更多的面试题目了，恭喜你该阶段复习完毕！");
           }else{
              
             $("#mstmquestion").html(result.question);
             $("#mstmanswers").html(result.answers);
           $("#mstmpid").text(result.pid);
           $("#mstmtype").text(result.type);
            
               }

		},
		erro:function(result){
          
   alert("没有更多题目了")
			}
});


	
}

$("#premstm").click(function(){
var loginUsername=$("#loginUsername").val();
var type=$("#mstmtype").text();
var pid=$("#mstmpid").text();	
if(parseInt(pid)==1){
alert("本题为第一题没有上一题！");
	
}else{
pid=(parseInt(pid)-1);
mstmgo(loginUsername,pid,type);
}
});
$("#nextmstm").click(function(){
	var loginUsername=$("#loginUsername").val();
	var type=$("#mstmtype").text();
	var pid=$("#mstmpid").text();	
	pid=(parseInt(pid)+1);
	mstmgo(loginUsername,pid,type);
	});

</script>
</body>
</html>