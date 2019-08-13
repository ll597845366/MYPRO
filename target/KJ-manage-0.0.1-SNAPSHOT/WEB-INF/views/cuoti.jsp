<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<div class="center-block" >
<div class="table-responsive" id="cuotitable">
</div>

<div align="center" id="agcuoti" hidden="true">
 <!-- 错题重做 -->

  <div    id="cuotiksjm" style="background-image: url('images/kaoshibg.jpg'); " >
          
       
         <div class="test_content">
							<div class="test_content_title" align="center">
							
								<h5>单选题/多选</h5>
								<h1 id="cuotiksname" hidden="true"></h1>
							</div>
						</div>
						<div  align="center" class="bor" style="background-color: white; margin: 0 5%; " >
							<h4 id="cuotiksname"></h4>
						<div style="font-size: 25px;">
						
						
<span>现在是第</span><i class="content_lit" id="cuotixztm" style="font-size: 30px;color: red;">0</i><span>题</span></span><span>共</span><i class="content_lit" id="cuotitmzs" style="font-size: 30px;color: red;"></i><span>题</span></span>
								</p></h4>
						
						</div>	
							
							
						
							<div id="cuotitimu" style="font-size: 20px;" class="test_content_nr_tt" align="left"></div>
							
							
							<div class="test_content_nr_main" align="left">
							<ul>
							<li class="option">
							<input type="checkbox"  name="ctA" value="A" id="cuotiaselect">
                                    <label style="font-size: 25px;"  id="cuotiaroom">
                                  A.
                                   <p class="ue"  style="display: inline;" id="cuotiselect1"></p>
                                     </label>
                                      </li>
                                            
                                            
                                    <li class="option">
							       <input type="checkbox" value="B" name="ctA" id="cuotibselect">
                                    <label style="font-size: 25px;" id="cuotibroom">
                                    B.
                                     <p class="ue"  style="display: inline;" id="cuotiselect2"></p>
                                     
                                     </label>
                                     </li>
                                            
                                            
                         	
							<li class="option">
							<input type="checkbox" value="C" name="ctA" id="cuoticselect">
                                    <label  style="font-size: 25px;" id="cuoticroom">
                                    C.
                                 <p class="ue"  style="display: inline;" id="cuotiselect3"></p>
                                     </label>
                                    </li>
                                           
                                   <li class="option">         	
							     <input type="checkbox" value="D" name="ctA" id="cuotidselect">
                                    <label style="font-size: 25px;" id="cuotidroom">
D.
                                    <p class="ue"  style="display: inline;" id="cuotiselect4"></p>
                                     </label>
                                    </li>
                                          
									</ul>
										
										<div align="right">
									  <button type="button" class="btn btn-danger" id="cuotixyt"  >Submit</button>
									 
									  </div>
									  
									  </div>
									  
									  
									</div>
									
                               
          
             </div>
              </div>
              <div hidden="true"> <a id="cuotirealid"></a></div>         
       
         

</div>
<div class="table-responsive" id="ctjieguo" hidden="true" style="margin: 0 10%">

</div>
</div>

<!-- 查看错题解析的模态框 -->

<div class="modal fade bs-example-modal-lg" id="ctmodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
     <h3 class="modal-title" id="ctmodalksname">错题解析查询</h3s>
      </div>
      <div class="modal-body">
    <h4> 题目:</h4> <h5 class="modal-title" id="ctmodaltimu"></h5>
      <div class="modal-body"><h6>A:</h6>
      <h6 id="ctmodalselect1"> </h6>
      </div>
       <div class="modal-body"><h6>B:</h6>
      <h6 id="ctmodalselect2"></h6>
      </div>
      <div class="modal-body"><h6> C:</h6>
      <h6 id="ctmodalselect3"></h6>
      </div>
       <div class="modal-body">
      <h6>D:</h6><h6 id="ctmodalselect4"></h6>
      </div>
        <div class="modal-body">
      <h6>正确答案:</h6><h6 id="ctmodaldaan"></h6>
      </div>
      <div class="modal-body">
     <span><h6>解析:</h6><h6 id="ctmodaljiexi"></h6></span>
      </div>
      </div>
      <div class="modal-footer">
        
        <button type="button" class="btn btn-primary" data-dismiss="modal" >Close Model</button>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
var cuotitmid=0;
var cuotizs=new Array();
var cuotiindex=0;
$(function(){

var loginUsername=$("#loginUsername").val();
$.ajax({

	   url:"cuotitable",
	   type:"post",
	   datatype:'JSON',
	   data:{loginUsername:loginUsername},
	   traditional:true,
	   success:function(result){
       var table="<table class='table table-hover'><thead><tr class='info'>"+
    "<th>序号</th><th>考试名</th><th>错题数</th><th>选择</th>"
           +"</tr></thead><tbody>";
       if(result.length==0||result==""||result==null){
          var h1="<h1>阁下居然没有错题，真是实力惊人</h1>"
           }else{
		 for(var i=0;i<result.length;i++){
               table=table+"<tr class='info'><th scope='row'>"+(i+1)+"</th>"+
                           "<td>"+result[i].ksname+"</td>"+
                           "<td>"+result[i].cuoticount+"</td>"+
                           "<td><button type='button' class='btn btn-info' onclick='ctczclick(this)'>重做错题</button></td>"+
                           "</tr>";

			 }
		 table=table+"<tbody></table>";
		 $("#cuotitable").html(table);
           }
		
	}
});

	
});
function ctczclick(a){

	 
	
var ksname=$(a).parent().parent().find("td:eq(0)").text();
$("#cuotiksname").text(ksname);
agcuoti();
}
function agcuoti(){
	var ksname=$("#cuotiksname").text();
	var loginUsername=$("#loginUsername").val();
	$.ajax({

		   url:"agcuoti",
		   type:"post",
		   datatype:'JSON',
		   data:{loginUsername:loginUsername,ksname:ksname},
		   traditional:true,
		   success:function(result){
             $("#cuotixztm").text(cuotitmid+1);
             $("#cuotitmzs").text(result.length);

             $("#cuotitimu").html(result[cuotitmid].timu);
             $("#cuotiselect1").html(result[cuotitmid].xuanXiang1);
             $("#cuotiselect2").html(result[cuotitmid].xuanXiang2);
             $("#cuotiselect3").html(result[cuotitmid].xuanXiang3);
             $("#cuotiselect4").html(result[cuotitmid].xuanXiang4);
             
             $("#cuotirealid").text(result[cuotitmid].id);
             $("#agcuoti").show();
             cuotitmid=cuotitmid+1;
             $("#cuotitable").hide();
			   }
	});
}
//
$("#cuotiaroom").click(function(){
	
	if($("#cuotiaselect").prop("checked")==true){
		$("#cuotiaselect").prop("checked",false);
		}else{
			$("#cuotiaselect").prop("checked",true);
			}
});
$("#cuotibroom").click(function(){
	
	if($("#cuotibselect").prop("checked")==true){
		$("#cuotibselect").prop("checked",false);
		}else{
			$("#cuotibselect").prop("checked",true);
			}
});
$("#cuoticroom").click(function(){
	
	if($("#cuoticselect").prop("checked")==true){
		$("#cuoticselect").prop("checked",false);
		}else{
			$("#cuoticselect").prop("checked",true);
			}
});
$("#cuotidroom").click(function(){
	
	if($("#cuotidselect").prop("checked")==true){
		$("#cuotidselect").prop("checked",false);
		}else{
			$("#cuotidselect").prop("checked",true);
			}
});


//错题考试下一题
$("#cuotixyt").click(function(){

	var cuotixztm=$("#cuotixztm").text();
	var cuotiksname=$("#cuotiksname").text();
	var loginUsername=$("#loginUsername").val();
	var cuotidaan =[];//定义一个数组    
    $('input[name="ctA"]:checked').each(function(){//遍历每一个名字为interest的复选框，其中选中的执行函数    
    cuotidaan.push($(this).val());//将选中的值添加到数组chk_value中    
  
    });
  
   var cuotirealid= $("#cuotirealid").text();
   
    if(cuotidaan.length==0){
          alert("您还没有选择答案!");
       
        }else{
            cuotiyuejuan(cuotidaan,cuotirealid);
            var cuotisum=$("#cuotitmzs").text();
       	   if(cuotitmid==cuotisum){
       		 alert("错题已经答完,即将跳转结果页面");
       		agctjiexi();
       		 $("#cuotixyt").hide();
       		 $("#ctjieguo").show();
       		 }else{
             agcuoti();
       		 }
        	 $(":checkbox[type='checkbox']").prop("checked", false);
        	 
            }
    
    
	
});

function cuotiyuejuan(cuotidaan,cuotirealid){
	 
	$.ajax({
	      
	     url:"cuotiyuejuan",
		type:"post",
		datatype:'JSON',
		data:{cuotidaan:cuotidaan,cuotirealid:cuotirealid},
		traditional:true,
		success:function(result){
		     
                if(result==0||result==null||result==""){
                	cuotizs[cuotitmid-1]=result;
                    }else{
                    	cuotizs[cuotitmid-1]=result;
                        }
                

			}
           
	});

		 
	
}

function  agctjiexi(){
var table=
"<table class='table table-bordered'><thead>"
+"<tr><th>考试名</th><th>再次答错序号</th><th>查看解析</th><tr></thead>";
var ksname=$("#cuotiksname").text();

for(var i=0;i<cuotizs.length;i++){
	if(cuotizs[i]!=0){
	table=table+"<tr><td>"+ksname+"</td>"+"<td>"+cuotizs[i]+"</td><td><button type='button' class='btn btn-warning' onclick='ctjiexi(this)' >查看解析</button></td></tr>"
	}else{
continue;
		}
}
table=table+"</table>";
$("#ctjieguo").html(table);
$("#agcuoti").hide();
$("#cuotitable").hide();
$("#ctjieguo").show();
$("#ctjieguoksname").text(ksname);
}

function ctjiexi(a){
var ksname=$(a).parent().parent().find("td:eq(0)").text();
var tmid=$(a).parent().parent().find("td:eq(1)").text();
$.ajax({
   url:"ctjiexi",
   type:"post",
   data:{ksname:ksname,tmid:tmid},
   success:function(result){
        $("#ctmodalselect1").html(result.xuanXiang1);
        $("#ctmodalselect2").html(result.xuanXiang2);
        $("#ctmodalselect3").html(result.xuanXiang3);
        $("#ctmodalselect4").html(result.xuanXiang4);
        $("#ctmodaljiexi").html(result.jieXi);
        $("#ctmodaldaan").html(result.daAn);
        $("#ctmodaltimu").text(result.timu);
        $("#ctmodal").modal('show');
	   }
	
});
	
	
}
</script>
</body>
</html>