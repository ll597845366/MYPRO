<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<div class="contact">
		<div class="container">
			<h2 class="agileits-title">我们想更快的了解你</h2>
			<div class="col-md-8 w3_agile_mail_left">
				<div class="agileits_mail_grid_right1 agile_mail_grid_right1" >
					
						<span>
							<i>姓名</i>
							<input type="text" id="wjdcname">
						</span>
						<span>
							<i>电话</i>
							<input type="text" id="wjdctel" onkeyup="value=value.replace(/[^\d]/g,'')">
						</span>
						<span>
							<i>现居住地</i>
							<input type="text" id="wjdcadd">
						</span>
						<span>
							<i>年龄</i>
							<input type="text" id="wjdcage" onkeyup="value=value.replace(/[^\d]/g,'')">
						</span>
						<span>
							<i>毕业院校</i>
							<input type="text" id="wjdcschool">
						</span>
						<span>
							<i>学历</i>
							<select class="form-control" id="wjdcxueli">
							    <option>在读/即将毕业</option>
							    <option>研究生</option>
								<option>本科</option>
								<option>专科</option>
								 <option>休学/退学</option>
								<option>专科以下</option>
								
								
							</select>
						</span>
						<span>
							<i>大学所学专业</i>
							<input type="text" id="wjdcskill">
						</span>
						
						<span>
							<i>是否有女朋友/蓝朋友/伴侣</i>
							<select class="form-control" id="wjdcnpy">
								<option>有</option>
								<option>没有</option>
								
								
							</select>
						</span>
						<span>
							<i>是否有IT行业技能证书</i>
							<select class="form-control"  id="wjdczhengshu">
								<option>有</option>
								<option>没有</option>
								
								
							</select>
						</span>
						<span>
							<i>你的期望薪资</i>
							<select class="form-control" id="wjdchopemon">
							    <option>4000</option>
								<option>4500</option>
								<option>5000</option>
								<option>5500</option>
								<option>6000</option>
								<option>6500</option>
								<option>7000</option>
								<option>8000</option>
								<option>9000</option>
								<option>10000</option>
								<option>12000</option>
								<option>15000</option>
								<option>20000</option>
							</select>
						</span>
						<span>
							<i>在达内学习是否获得了家人的支持</i>
							<select class="form-control" id="wjdczhichi">
								<option>家人完全支持</option>
								<option>家人基本支持</option>
								<option>家人反对学习</option>
								<option>家人对此一无所知</option>
								<option>学习使我快乐家人支不支持我都不在乎</option>
							</select>
						</span>
						<span>
							<i>身边是否有想要学习的朋友，如果有请填写朋友的姓名和电话</i>
							<input type="text" id="wjdckoubei"   >
						</span>
						<span>
							<i>你对我们项目经理有什么看法或建议</i>
							<textarea name="Message" id="wjdcskilltea"></textarea>
						</span>
						<div class="w3_submit">
							<input type="submit" value="Submit Now"  id="wjdcsubmit">
						</div>
				
				</div>
			</div>
			<div class="col-md-4 w3_agile_mail_right">
				<div class="w3_agileits_mail_right_grid">
					<h4>关于我们</h4>
					<p>达内成都天府中心教学部：我们将竭诚为你的学习服务，提高所有同学的技术能力，所以我们想更加了解每一位同学</p>
					<h5>Follow Us On</h5>
					<div class="social-wthree-icons">
						<ul>
							<li><a href="#" class="fa fa-facebook icon icon-border facebook"> </a></li>
							<li><a href="#" class="fa fa-twitter icon icon-border twitter"> </a></li>
							<li><a href="#" class="fa fa-google-plus icon icon-border googleplus"> </a></li>
							<li><a href="#" class="fa fa-dribbble icon icon-border dribbble"> </a></li> 
						</ul>
						<div class="clearfix"> </div>
					</div> 
					<div class="w3_agileits_mail_right_grid_pos">
						<img src="images/t3.jpg" alt=" " class="img-responsive" />
					</div>
				</div>
				<div class="w3_agileits_mail_right_grid_main">
					<div class="w3layouts_mail_grid_left">
						<div class="w3layouts_mail_grid_left1 hvr-radial-out">
							<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
						</div>
						<div class="w3layouts_mail_grid_left2">
							<h3>Mail Us</h3>
							<a href="mailto:info@example.com">tfhecp@tedu.cn</a>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="w3layouts_mail_grid_left">
						<div class="w3layouts_mail_grid_left1 hvr-radial-out">
							<span class="glyphicon glyphicon-home" aria-hidden="true"></span>
						</div>
						<div class="w3layouts_mail_grid_left2">
							<h3>Address</h3>
							<p>成都市高新区孵化园9号园区E座7楼</p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="w3layouts_mail_grid_left">
						<div class="w3layouts_mail_grid_left1 hvr-radial-out">
							<span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>
						</div>
						<div class="w3layouts_mail_grid_left2">
							<h3>Phone</h3>
							<p>+17726443713</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
				<div class="clearfix"> </div>
			</div>
		</div>
			</div>
			
			
			<script type="text/javascript">

	        
			$("#wjdcsubmit").click(function(){
				var loginUsername=$("#loginUsername").val();
				var name=$("#wjdcname").val();
				var tel=$("#wjdctel").val();
				var address=$("#wjdcadd").val();
				var age=$("#wjdcage").val();
				var schoolEd=$("#wjdcschool").val();
				var xueli=$("#wjdcxueli").val();
				var skill=$("#wjdcskill").val();
				
			    var npy=$("#wjdcnpy").val();
			    var zhengshu=$("#wjdczhengshu").val();
			    var hopeMoney=$("#wjdchopemon").val();
			    var zhichi=$("#wjdczhichi").val();
			    var koubei=$("#wjdckoubei").val();
			    var skillTeacher=$("#wjdcskilltea").val();

			  
                  //验证是否有空参数
                if(name==null||name==""||tel==null||tel==""||address==null||address==""
			||age==null||age==""||schoolEd==null||schoolEd==""||xueli==null||xueli==""||skill==null||skill==""||
			npy==null||npy==""||zhengshu==null||zhengshu==""||koubei==null||koubei==""||skillTeacher==null||skillTeacher=="")
        			{
                    alert("请填写完毕之后再提交！");

        			}else{
                       //后台提交
                        $.ajax({
		              url:"wjdcinsert",
		              type:"post",
		              datatype:'JSON',
		              data:{loginUsername:loginUsername,name:name,tel:tel,address:address,age:age,
			              schoolEd:schoolEd,xueli:xueli,skill:skill,npy:npy,zhengshu:zhengshu,
			              hopeMoney:hopeMoney,zhichi:zhichi,koubei:koubei,skillTeacher:skillTeacher},
		              success:function(result){
                        if(result=="true"){

                      alert("提交成功，感谢你的认真填写，本页面即将关闭");  
                       $("#pic2").hide();
                       $("#wjdc").hide();
                            }else{

                      alert("服务器内部故障请联系项目经理");

                                }



		              }
                        
               

            			});
        			}
			    
			});

			//输入的参数不能为空
			

			</script>
</body>
</html>  