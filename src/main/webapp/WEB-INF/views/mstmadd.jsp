<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="Content-Type" content="multipart/form-data; charset=utf-8" />
<title>Insert title here</title>
</head>
<body>
<div align="center" style="margin: 0 5.8%">
<h3 align="center">上传面试题</h3>
<form id="mstmfile" enctype="multipart/form-data">
<input type="file" name="file" id="mstmfile1"> 
</form>
<div align="center"><h4 align="center">请按照标准模板上传面试题，如没有模板请点击下载<span><button class="btn btn-danger">下载excel模板</button></span></h4> </div>
<button class="btn btn-danger" id="submitmstm">Submit</button>
</div>

<script type="text/javascript">

$("#submitmstm").click(function(){
  var fileName=$("#mstmfile1").val();
  var reg = /^.*\.(?:xls|xlsx)$/i;//文件名可以带空格
  if(fileName==null||fileName==""){
      alert("你还没有选择文件");
	  }else if(!reg.test(fileName)){//验证文件格式是否正确
		  
		 alert("请上传正确的格式的文件：xls/xlsx");
          
          }else{
        	
        	 var formData=new FormData($('#mstmfile')[0]); 
        	
        	 
            $.ajax({url:"mstminsert",
            	
        		type: 'post',
        		dataType: 'json',
        		data: formData,
        		async: true,
        		cache: false, // 上传文件不缓存
        		contentType: false, 
        		processData: false, // 因为data是formData对象，所以不需要做数据处理
        		success: function (result) {
            		
            		if(result==true){
                		alert("上传成功");
                		}else{
                        alert("上传失败");
                    		}
        			
        		}
        

                });

                  }

              
		  

	
});


</script>
</body>
</html>