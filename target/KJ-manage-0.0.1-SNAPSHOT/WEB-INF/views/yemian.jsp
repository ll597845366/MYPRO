<%@ page language="java" contentType="text/html; utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<div id="allwt">
<div  class="panel-heading" align="right" >

<input  class="form-control"  placeholder="搜索你遇到的问题" style="width: 25% ;display: inline;"><button class="btn btn-success">搜索</button>
<button class="btn btn-warning">添加问题</button>
<button class="btn btn-info" >我的问题</button>
</div>
<div class="panel-heading" align="center" id="wt1" hidden="true">
<div class="panel-title" align="left"> <span class="glyphicon glyphicon-user"></span>
<a>发布者：<span id="wtname1"></span></a>
<div class="panel-title">
<span class="glyphicon glyphicon-list-alt"></span><span>发布时间：<a id="wtfabu1"></a></span>
</div>
<span class="glyphicon glyphicon-fire"></span><a >获取积分：<span  id="wtjifen1">积分：10</span></a></div>
<a style="font-size: 25px;" id="myquestion1">我的问题</a>
<div  class="panel-heading" align="right">
<button class="btn btn-info" id="wtxq1">查看详情</button>
</div>
</div >  
<!-- ----------------------------- -->
<div class="panel-heading" align="center" id="wt2" hidden="true">
<div class="panel-title" align="left"> <span class="glyphicon glyphicon-user"></span>
<a>发布者：<span id="wtname2">姓名</span></a>
<div class="panel-title">
<span class="glyphicon glyphicon-list-alt"></span><span >发布时间：<a id="wtfabu2"></a></span>
</div>
<span class="glyphicon glyphicon-fire"></span><a >获取积分：<span id="wtjifen2">积分：10</span></a></div>
<a style="font-size: 25px;" id="myquestion2">我的问题</a>
<div  class="panel-heading" align="right">
<button class="btn btn-info" id="wtxq1">查看详情</button>
</div>
</div >  
<!-- ----------------------------- -->
<div class="panel-heading" align="center" id="wt3" hidden="true">
<div class="panel-title" align="left"> <span class="glyphicon glyphicon-user"></span>
<a>发布者：<span id="wtname3">姓名</span></a>
<div class="panel-title">
<span class="glyphicon glyphicon-list-alt"></span><span >发布时间：<a id="wtfabu3"></a></span></div>
<span class="glyphicon glyphicon-fire"></span><a >获取积分：<span  id="wtjifen3">积分：10</span></a></div>
<a style="font-size: 25px;" id="myquestion3">我的问题</a>
<div  class="panel-heading" align="right">
<button class="btn btn-info" id="wtxq3">查看详情</button>
</div>
</div >  
<!-- ----------------------------- -->

<div class="panel-heading" align="center" id="wt4" hidden="true">
<div class="panel-title" align="left"><span class="glyphicon glyphicon-user"></span> <a>发布者：<span id="wtname4"></span></a>
<div>
<span class="glyphicon glyphicon-list-alt"></span><span >发布时间：<a id="wtfabu4"></a></span>
</div>
<span class="glyphicon glyphicon-fire"></span><a >获取积分：<span id="wtjifen4">积分：10</span></a></div>
<a style="font-size: 25px;" id="myquestion4">我的问题</a>
<div  class="panel-heading" align="right">
<button class="btn btn-info" id="wtxq4">查看详情</button>
</div>
</div >  
<!-- ----------------------------- -->
<div class="panel-heading" align="center" id="wt5" hidden="true">
<div class="panel-title" align="left"> <span class="glyphicon glyphicon-user"></span>
<a>发布者：<span id="wtname5">姓名</span></a>
<div class="panel-title"><span class="glyphicon glyphicon-list-alt"></span><span >发布时间：<a id="wtfabu5"></a></span></div>
<span class="glyphicon glyphicon-fire"></span><a >获取积分：<span  id="wtjifen5">积分：10</span></a></div>
<a style="font-size: 25px;" id="myquestion5">我的问题</a>
<div  class="panel-title" align="right">
<button class="btn btn-info" id="wtxq5">查看详情</button>
</div>
</div >  

<!-- ----------------------------- -->


<div class="panel-heading" align="center">

<button  class="btn btn-info" id="wtfront">上一页</button>
<span class="glyphicon glyphicon-menu-left"></span>
<a id="wtpage"></a>
/
<a id="wtpages"></a>
<span  class="glyphicon glyphicon-menu-right"></span>
<button  class="btn btn-info" id="wtnext">下一页</button>
</div>
</div>
<div class="panel-heading" hidden="true" id="wtxq">

<div class="panel-heading">
<h5 id="wtst">问题实体嘻嘻嘻嘻嘻嘻嘻嘻寻寻寻寻寻寻寻寻寻寻寻寻寻寻寻寻寻寻寻寻寻寻寻寻寻寻寻</h5>
</div >
<div  align="left">
<span class="glyphicon glyphicon-user"></span><a>发布者:<span id="wtname"></span></a>  
<br><span class="glyphicon glyphicon-list-alt"></span><a>发布时间：<span id="fabutime">发布时间</span></a> 
<br><span class="glyphicon glyphicon-eye-open"></span> <a>浏览次数:<a><span>12</a></span>
<br>
<span class="glyphicon glyphicon-tag"></span><a>问题状态:</a>
</div>

<div class="panel-title">
<h6>解决问题的回答监督阿瓦达无大无多色付色</h6>
<div align="right">
<a ><span class="glyphicon glyphicon-thumbs-up" style="height: 15%;width: 15%;"></span>点赞数量</a>   
</div>
</div>
</div>


<script type="text/javascript">
a=1;
//问题详情
$("#wtxq1").click(function(){
	$("#wtxq").show();
$("#allwt").hide();
$("#wtst").text($("#myquestion1").text());

$("#wtname").text($("#wtname1").text());
$("#fabutime").text($("#wtfabu1").text());
});
//上一页
$("#wtfront").click(function(){
	$.ajax({
	      
	     url:"wtfront",
		type:"post",
		datatype:'JSON',
		data:{a:a},
		traditional:true,
		success:function(result){
			 if(result.length==0){
	              $("wt1").hide();
	              $("wt2").hide();
	              $("wt3").hide();
	              $("wt4").hide();
	              $("wt5").hide();
	              alert("所有问题都已经被解决，暂时没有待解决的问题");
	            }else if(result.length==1){
	                       $("#wtname1").text(result[0].qname);
	                       $("#wtfabu1").text(result[0].createdTime);
	                       $("#wtjifen1").text(result[0].jifen);
	                       $("#myquestion1").text(result[0].question);
	                       
	            	   $("#wt1").show();
	                   $("#wt2").hide();
	                   $("#wt3").hide();
	                   $("#wt4").hide();
	                   $("#wt5").hide();
	                       

	             }else if(result.length==2){
	            	 $("#wtname1").text(result[0].qname);
	                 $("#wtfabu1").text(result[0].createdTime);
	                 $("#wtjifen1").text(result[0].jifen);
	                 $("#myquestion1").text(result[0].question);

	                 $("#wtname2").text(result[1].qname);
	                 $("#wtfabu2").text(result[1].createdTime);
	                 $("#wtjifen2").text(result[1].jifen);
	                 $("#myquestion2").text(result[1].question);
	                    
	            	 $("#wt1").show();
	                 $("#wt2").show();
	                 $("#wt3").hide();
	                 $("#wt4").hide();
	                 $("#wt5").hide();



	              }else if(result.length==3){
	            	  $("#wtname1").text(result[0].qname);
	                  $("#wtfabu1").text(result[0].createdTime);
	                  $("#wtjifen1").text(result[0].jifen);
	                  $("#myquestion1").text(result[0].question);

	                  $("#wtname2").text(result[1].qname);
	                  $("#wtfabu2").text(result[1].createdTime);
	                  $("#wtjifen2").text(result[1].jifen);
	                  $("#myquestion2").text(result[1].question);


	                  $("#wtname3").text(result[2].qname);
	                  $("#wtfabu3").text(result[2].createdTime);
	                  $("#wtjifen3").text(result[2].jifen);
	                  $("#myquestion3").text(result[2].question);
	             
	            	  $("#wt1").show();
	                  $("#wt2").show();
	                  $("#wt3").show();
	                  $("#wt4").hide();
	                  $("#wt5").hide();
	                  


	                 }else if(result.length==4){

	                	  $("#wtname1").text(result[0].qname);
	                      $("#wtfabu1").text(result[0].createdTime);
	                      $("#wtjifen1").text(result[0].jifen);
	                      $("#myquestion1").text(result[0].question);

	                      $("#wtname2").text(result[1].qname);
	                      $("#wtfabu2").text(result[1].createdTime);
	                      $("#wtjifen2").text(result[1].jifen);
	                      $("#myquestion2").text(result[1].question);


	                      $("#wtname3").text(result[2].qname);
	                      $("#wtfabu3").text(result[2].createdTime);
	                      $("#wtjifen3").text(result[2].jifen);
	                      $("#myquestion3").text(result[2].question);


	                      $("#wtname4").text(result[3].qname);
	                      $("#wtfabu4").text(result[3].createdTime);
	                      $("#wtjifen4").text(result[3].jifen);
	                      $("#myquestion4").text(result[3].question);
	                      
	                	  $("#wt1").show();
	                      $("#wt2").show();
	                      $("#wt3").show();
	                      $("#wt4").show();
	                      $("#wt5").hide();


	                     }else if(result.length==5){

	                    	  $("#wtname1").text(result[0].qname);
	                          $("#wtfabu1").text(result[0].createdTime);
	                          $("#wtjifen1").text(result[0].jifen);
	                          $("#myquestion1").text(result[0].question);

	                          $("#wtname2").text(result[1].qname);
	                          $("#wtfabu2").text(result[1].createdTime);
	                          $("#wtjifen2").text(result[1].jifen);
	                          $("#myquestion2").text(result[1].question);


	                          $("#wtname3").text(result[2].qname);
	                          $("#wtfabu3").text(result[2].createdTime);
	                          $("#wtjifen3").text(result[2].jifen);
	                          $("#myquestion3").text(result[2].question);


	                          $("#wtname4").text(result[3].qname);
	                          $("#wtfabu4").text(result[3].createdTime);
	                          $("#wtjifen4").text(result[3].jifen);
	                          $("#myquestion4").text(result[3].question);

	                          
	                          $("#wtname5").text(result[4].qname);
	                          $("#wtfabu5").text(result[4].createdTime);
	                          $("#wtjifen5").text(result[4].jifen);
	                          $("#myquestion5").text(result[4].question);
	                          
	                    	  $("#wt1").show();
	                          $("#wt2").show();
	                          $("#wt3").show();
	                          $("#wt4").show();
	                          $("#wt5").show();


	                         }
            a--;
             $("#wtpage").text(a);
             if(a!=$("#wtpages").text()){
                 $("#wtnext").show();


                 }
             if(a==1){
            	 $("#wtfront").hide();

                 }
             
	     
			
		}
	});
	
	
});


//点击下一页按钮出现的内容
$("#wtnext").click(function(){
	$.ajax({
	      
	     url:"wtnext",
		type:"post",
		datatype:'JSON',
		data:{a:a},
		traditional:true,
		success:function(result){
			 if(result.length==0){
	              $("wt1").hide();
	              $("wt2").hide();
	              $("wt3").hide();
	              $("wt4").hide();
	              $("wt5").hide();
	              alert("所有问题都已经被解决，暂时没有待解决的问题");
	            }else if(result.length==1){
	                       $("#wtname1").text(result[0].qname);
	                       $("#wtfabu1").text(result[0].createdTime);
	                       $("#wtjifen1").text(   result[0].jifen);
	                       $("#myquestion1").text(result[0].question);
	                       
	            	   $("#wt1").show();
	                   $("#wt2").hide();
	                   $("#wt3").hide();
	                   $("#wt4").hide();
	                   $("#wt5").hide();
	                       

	             }else if(result.length==2){
	            	 $("#wtname1").text(result[0].qname);
	                 $("#wtfabu1").text(result[0].createdTime);
	                 $("#wtjifen1").text(result[0].jifen);
	                 $("#myquestion1").text(result[0].question);

	                 $("#wtname2").text(result[1].qname);
	                 $("#wtfabu2").text(result[1].createdTime);
	                 $("#wtjifen2").text(result[1].jifen);
	                 $("#myquestion2").text(result[1].question);
	                    
	            	 $("#wt1").show();
	                 $("#wt2").show();
	                 $("#wt3").hide();
	                 $("#wt4").hide();
	                 $("#wt5").hide();



	              }else if(result.length==3){
	            	  $("#wtname1").text(result[0].qname);
	                  $("#wtfabu1").text(result[0].createdTime);
	                  $("#wtjifen1").text(result[0].jifen);
	                  $("#myquestion1").text(result[0].question);

	                  $("#wtname2").text(result[1].qname);
	                  $("#wtfabu2").text(result[1].createdTime);
	                  $("#wtjifen2").text(result[1].jifen);
	                  $("#myquestion2").text(result[1].question);


	                  $("#wtname3").text(result[2].qname);
	                  $("#wtfabu3").text(result[2].createdTime);
	                  $("#wtjifen3").text(result[2].jifen);
	                  $("#myquestion3").text(result[2].question);
	             
	            	  $("#wt1").show();
	                  $("#wt2").show();
	                  $("#wt3").show();
	                  $("#wt4").hide();
	                  $("#wt5").hide();
	                  


	                 }else if(result.length==4){

	                	  $("#wtname1").text(result[0].qname);
	                      $("#wtfabu1").text(result[0].createdTime);
	                      $("#wtjifen1").text(result[0].jifen);
	                      $("#myquestion1").text(result[0].question);

	                      $("#wtname2").text(result[1].qname);
	                      $("#wtfabu2").text(result[1].createdTime);
	                      $("#wtjifen2").text(result[1].jifen);
	                      $("#myquestion2").text(result[1].question);


	                      $("#wtname3").text(result[2].qname);
	                      $("#wtfabu3").text(result[2].createdTime);
	                      $("#wtjifen3").text(result[2].jifen);
	                      $("#myquestion3").text(result[2].question);


	                      $("#wtname4").text(result[3].qname);
	                      $("#wtfabu4").text(result[3].createdTime);
	                      $("#wtjifen4").text(result[3].jifen);
	                      $("#myquestion4").text(result[3].question);
	                      
	                	  $("#wt1").show();
	                      $("#wt2").show();
	                      $("#wt3").show();
	                      $("#wt4").show();
	                      $("#wt5").hide();


	                     }else if(result.length==5){

	                    	  $("#wtname1").text(result[0].qname);
	                          $("#wtfabu1").text(result[0].createdTime);
	                          $("#wtjifen1").text(result[0].jifen);
	                          $("#myquestion1").text(result[0].question);

	                          $("#wtname2").text(result[1].qname);
	                          $("#wtfabu2").text(result[1].createdTime);
	                          $("#wtjifen2").text(result[1].jifen);
	                          $("#myquestion2").text(result[1].question);


	                          $("#wtname3").text(result[2].qname);
	                          $("#wtfabu3").text(result[2].createdTime);
	                          $("#wtjifen3").text(result[2].jifen);
	                          $("#myquestion3").text(result[2].question);


	                          $("#wtname4").text(result[3].qname);
	                          $("#wtfabu4").text(result[3].createdTime);
	                          $("#wtjifen4").text(result[3].jifen);
	                          $("#myquestion4").text(result[3].question);

	                          
	                          $("#wtname5").text(result[4].qname);
	                          $("#wtfabu5").text(result[4].createdTime);
	                          $("#wtjifen5").text(result[4].jifen);
	                          $("#myquestion5").text(result[4].question);
	                          
	                    	  $("#wt1").show();
	                          $("#wt2").show();
	                          $("#wt3").show();
	                          $("#wt4").show();
	                          $("#wt5").show();


	                         }
             a++;
             $("#wtpage").text(a);
             if(a==$("#wtpages").text()){
                      $("#wtnext").hide();


                 }
             if(a!=1){
                   $("#wtfront").show();

                 }
	     
			
		}
	});
	
	
});
	
//默认加载页面内容
$(function(){  
    wtpages();
	
	$.ajax({
	      
	     url:"wtload",
		type:"post",
		datatype:'JSON',
		data:{a:a},
		traditional:true,
		success:function(result){
           if(result.length==0){
              $("wt1").hide();
              $("wt2").hide();
              $("wt3").hide();
              $("wt4").hide();
              $("wt5").hide();
              alert("所有问题都已经被解决，暂时没有待解决的问题");
            }else if(result.length==1){
                       $("#wtname1").text(result[0].qname);
                       $("#wtfabu1").text(result[0].createdTime);
                       $("#wtjifen1").text(result[0].jifen);
                       $("#myquestion1").text(result[0].question);
                       
            	   $("#wt1").show();
                   $("#wt2").hide();
                   $("#wt3").hide();
                   $("#wt4").hide();
                   $("#wt5").hide();
                       

             }else if(result.length==2){
            	 $("#wtname1").text(result[0].qname);
                 $("#wtfabu1").text(result[0].createdTime);
                 $("#wtjifen1").text(result[0].jifen);
                 $("#myquestion1").text(result[0].question);

                 $("#wtname2").text(result[1].qname);
                 $("#wtfabu2").text(result[1].createdTime);
                 $("#wtjifen2").text(result[1].jifen);
                 $("#myquestion2").text(result[1].question);
                    
            	 $("#wt1").show();
                 $("#wt2").show();
                 $("#wt3").hide();
                 $("#wt4").hide();
                 $("#wt5").hide();



              }else if(result.length==3){
            	  $("#wtname1").text(result[0].qname);
                  $("#wtfabu1").text(result[0].createdTime);
                  $("#wtjifen1").text(result[0].jifen);
                  $("#myquestion1").text(result[0].question);

                  $("#wtname2").text(result[1].qname);
                  $("#wtfabu2").text(result[1].createdTime);
                  $("#wtjifen2").text(result[1].jifen);
                  $("#myquestion2").text(result[1].question);


                  $("#wtname3").text(result[2].qname);
                  $("#wtfabu3").text(result[2].createdTime);
                  $("#wtjifen3").text(result[2].jifen);
                  $("#myquestion3").text(result[2].question);
             
            	  $("#wt1").show();
                  $("#wt2").show();
                  $("#wt3").show();
                  $("#wt4").hide();
                  $("#wt5").hide();
                  


                 }else if(result.length==4){

                	  $("#wtname1").text(esult[0].qname);
                      $("#wtfabu1").text(result[0].createdTime);
                      $("#wtjifen1").text(result[0].jifen);
                      $("#myquestion1").text(result[0].question);

                      $("#wtname2").text(result[1].qname);
                      $("#wtfabu2").text(result[1].createdTime);
                      $("#wtjifen2").text(result[1].jifen);
                      $("#myquestion2").text(result[1].question);


                      $("#wtname3").text(result[2].qname);
                      $("#wtfabu3").text(result[2].createdTime);
                      $("#wtjifen3").text(result[2].jifen);
                      $("#myquestion3").text(result[2].question);


                      $("#wtname4").text(result[3].qname);
                      $("#wtfabu4").text(result[3].createdTime);
                      $("#wtjifen4").text(result[3].jifen);
                      $("#myquestion4").text(result[3].question);
                      
                	  $("#wt1").show();
                      $("#wt2").show();
                      $("#wt3").show();
                      $("#wt4").show();
                      $("#wt5").hide();


                     }else if(result.length==5){

                    	  $("#wtname1").text(result[0].qname);
                          $("#wtfabu1").text(result[0].createdTime);
                          $("#wtjifen1").text(result[0].jifen);
                          $("#myquestion1").text(result[0].question);

                          $("#wtname2").text(result[1].qname);
                          $("#wtfabu2").text(result[1].createdTime);
                          $("#wtjifen2").text(result[1].jifen);
                          $("#myquestion2").text(result[1].question);


                          $("#wtname3").text(result[2].qname);
                          $("#wtfabu3").text(result[2].createdTime);
                          $("#wtjifen3").text(result[2].jifen);
                          $("#myquestion3").text(result[2].question);


                          $("#wtname4").text(result[3].qname);
                          $("#wtfabu4").text(result[3].createdTime);
                          $("#wtjifen4").text(result[3].jifen);
                          $("#myquestion4").text(result[3].question);

                          
                          $("#wtname5").text(result[4].qname);
                          $("#wtfabu5").text(result[4].createdTime);
                          $("#wtjifen5").text(result[4].jifen);
                          $("#myquestion5").text(result[4].question);
                          
                    	  $("#wt1").show();
                          $("#wt2").show();
                          $("#wt3").show();
                          $("#wt4").show();
                          $("#wt5").show();


                         }
     
			
		}
	});


	});


function wtpages(){
	$.ajax({
	      
	     url:"wtpages",
		type:"post",
		datatype:'JSON',
		data:{a:a},
		traditional:true,
		success:function(result){
      $("#wtpages").text(result);
      $("#wtpage").text(a);
      $("#wtfront").hide();
      if(a==result){

    	  $("#wtnext").hide();
          }
		}
	});

	
}
</script>
</body>
</html>