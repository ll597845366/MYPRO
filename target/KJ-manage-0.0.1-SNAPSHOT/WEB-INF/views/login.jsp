<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 响应式布局meta -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="Content-Type" content="multipart/form-data; charset=utf-8" />
 <link href="css/bootstrap.min.css" rel="stylesheet">
 <link href="css/style.css" type="text/css" rel="stylesheet" media="all"> 
 <link rel="stylesheet" type="text/css" href="css/iconfont1.css" />
 <link rel="stylesheet" type="text/css" href="css/test1.css" />

        <link rel="stylesheet" type="text/css" href="css/common.css" />
        <link rel="stylesheet" type="text/css" href="css/slide.css" />
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
        <link rel="stylesheet" href="css/jquery-ui.css" /> 
        <link rel="stylesheet" type="text/css" href="css/flat-ui.min.css" />
        <link href="css/font-awesome.css" rel="stylesheet">
       
        <link rel="stylesheet" type="text/css" href="css/jquery.nouislider.css">
        
        
        
   
        <link href="css/style.css" type="text/css" rel="stylesheet" media="all"> 
        <link href="css/font-awesome.css" rel="stylesheet">   <!-- font-awesome icons --> 
        <link rel="stylesheet" href="css/swipebox.css"> 
         <link href="css/wickedpicker.css" rel="stylesheet" type='text/css' media="all" />  <!-- time-picker-CSS -->
         



        <script type="text/javascript"  src="js/jquery-2.2.3.min.js"></script>
        
        <script type="text/javascript" src="ueditor/ueditor.config.js"></script>
        <script type="text/javascript" src="ueditor/ueditor.all.min.js"></script>
         
         <script type="text/javascript" src="ueditor/lang/zh-cn/zh-cn.js"></script>
         <script src="js/jquery.filterizr.js"></script>  
	<script src="js/controls.js"></script>
	<script src="js/jquery.swipebox.min.js"></script> 
	 <script src="js/bootstrap.js"></script>
	 
	 <!--   <script src="js/SmoothScroll.min.js"></script>
	<script src="js/jarallax.js"></script> 
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>	
     -->
         <link href="css/wickedpicker.css" rel="stylesheet" type='text/css' media="all" />
        <style type="text/css">
        .bor{
         border:2px  solid  yellow;
        
        }
        
        input[type="checkbox"]{width:22px;height:22px;display: inline-block;text-align: center;vertical-align: middle; line-height: 18px;position: relative;}
input[type="checkbox"]::before{content: "";position: absolute;top: 0;left: 0;background: #fff;width: 100%;height: 100%;border: 1px solid #d9d9d9}
input[type="checkbox"]:checked::before{content: "\2713";background-color: #fff;position: absolute;top: 0;left: 0;width:100%;border: 1px solid #e50232;color:#e50232;font-size: 20px;font-weight: bold;}
    
        </style>
<title >成都天府中心考试系统</title>

</head>
  
	
		<div class="w3header" >
			<div class="container" style="width: 90% ;color: red; " >
				<nav class="navbar navbar-default" style="background-image: url('images/picgb.jpg');">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<h1><a style="color:#FE9A2E;"> 成都天府中心 </a></h1> 
					</div>
					<!-- navbar-header -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"> 
						<ul class="nav navbar-nav navbar-right">
							 <li ><a  id="sy" class="active" >首页</a></li>
							 <li id="wjdcshow"> </li>
							  <li id="teacherselect"> </li>
							  <li class="dropdown">
							 <a  class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" aria-haspopup="true" style="color:#FE9A2E;">面试复习 <span class="caret"></span> </a>
                             <ul class="dropdown-menu">
                             
                             <li ><a  id="mstmfx" style="color:#FE9A2E;">面试复习</a></li>
                             <li ><a  id="mstmzhuanxiang" style="color:#FE9A2E;">专项练习</a></li>
                             <li id="mstmadd"></li>
           
            </ul>
            </li>
							   <li ><a  id="zhanghao" style="color:#FE9A2E;"> 账号信息</a></li>
							 <li class="dropdown">
							 <a  class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" aria-haspopup="true" style="color:#FE9A2E;">考试相关 <span class="caret"></span> </a>
                             <ul class="dropdown-menu">
                             <li ><a  id="wdks" style="color:#FE9A2E;">我的考试</a></li>
                             <li><a  id="cjcx" style="color:#FE9A2E;">成绩查询</a></li>
                             <li><a  id="fbks" style="color:#FE9A2E;">发布考试</a></li>
                             <li><a  id="bjpm" style="color:#FE9A2E;">班级排名</a></li>
                             <li><a  id="ykssj" style="color:#FE9A2E;">已考试卷</a></li> 
                             <li><a  id="ctb" style="color:#FE9A2E;" onclick="cuoti()">错题本</a></li> 
                   
           
           
            </ul>
            </li>
         <li class="dropdown"><a  id="mryl" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" aria-haspopup="true" style="color:#FE9A2E;">每日一练 
          <span class="caret"></span>
          
          </a>
          <ul class="dropdown-menu">
            <li ><a  id="wwclx" style="color:#FE9A2E;">未完成的练习<span class="label label-danger" id="wwclxmsg">1</span></a></li>
                    <li><a  id="fblx" style="color:#FE9A2E;">发布练习</a></li>
                    <li><a  id="lxls" style="color:#FE9A2E;">练习历史</a></li>
                     <li><a  id="cwsj" style="color:#FE9A2E;">错误收集</a></li>
                  
                   
           
           
          </ul>
          
          
          
          </li>
							  <li><a data-toggle="modal" data-target="#login" id="login2" style="color:#FE9A2E;"><span class="glyphicon glyphicon-log-in" id="huanying"></span>登录</a></li>
         
           <li><a  id="tuichu" style="color:#FE9A2E;"><span class="	glyphicon glyphicon-remove"></span > 退出登录</a></li>
           <!-- <li><a  id="gywm" style="color:#FE9A2E;">关于我们</a></li> -->
						</ul> 
						<div class="clearfix"> </div>	
					</div>
				</nav>
			</div>  
		
<body >
	
	

 <!-- 登录窗口 -->
    <div id="login" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <button class="close" data-dismiss="modal">
                        <span>&times;</span>
                    </button>
                </div>
                <div class="modal-title">
                    <h1 class="text-center">登录</h1>
                </div>
                <div class="modal-body">
                 <!-- 验证是否输入了账号密码 -->
                            <div class="form-group">
                                <label for="">用户名</label>
                                <input class="form-control" type="text" placeholder="请输入账号" name="loginUsername" id="loginUsername">
                            </div>
                            <div class="form-group">
                                <label for="">密码</label>
                                <input class="form-control" type="password" placeholder="请输入密码" name="password" id="password">
                            </div>
                            <div class="text-right">
                                <button class="btn btn-primary" id="login1" >登录</button>
                                <button class="btn btn-danger" data-dismiss="modal">取消</button>
                            </div>
                            <a onclick="window.location.href='sign'" data-dismiss="modal" data-target="#register">还没有账号？点我注册</a>
                  
                </div>
            </div>
        </div>
    </div>
<div align="center">

</div>  

 
 


<!-- 滚动图片 -->




<!-- ------------------------------------------------------首页轮换图---------------------------------------------------------------------------------------------------------------------- -->
<div  id="pic" style="margin:  0 5.8%" align="center">
 

 
 
</div>
<div class="body" id="pic2" style="margin:  0 5.8%"></div>
<!-- ----------------------------------------------------------账号信息-------------------------------------------------------------------------------------------------- -->
<div id="zhanghao1" hidden="true" class="panel panel-default" style="margin: 0  5.8%">
<div align="center" class="panel-heading">

<h3>账号信息</h3>
</div>
<div>
<div align="center" class="panel-heading" ><span    class="glyphicon glyphicon-user">姓名:<a id="xxuserName"></a></span></div>
<div align="center" class="panel-heading" ><span    class="glyphicon glyphicon-user">账号:<a id="xxloginUsername"></a></span></div>
<div align="center" class="panel-heading" ><span    class="glyphicon glyphicon-phone">手机:<a id="xxtel"></a></span></div>
<div align="center" class="panel-heading" ><span     class="glyphicon glyphicon-oil">班级:<a id="xxbanji"></a></span></div>
<div align="center" class="panel-heading" ><span     class="glyphicon glyphicon-bed">地址:<a id="xxaddress"></a></span></div>
<div align="center" class="panel-heading"  ><span    class="glyphicon glyphicon-star">年龄:<a id="xxage"></a></span></div>
<div align="center" class="panel-heading" ><span  class="glyphicon glyphicon-send">性别:<a  id="xxgender"></a></span></div>

<div align="center" class="panel-heading" > 
           <button type="button" data-toggle="modal" data-target="#xiugai" class="btn btn-info btn-sm">修改密码</button> 
           <button type="button" data-toggle="modal" data-target="#wanshan" class="btn btn-info btn-sm">完善账号信息</button> 
           <button type="button" class="btn btn-info btn-sm" id="fanhui1">返回</button>   </div>
</div>




</div>

<div class="modal fade bs-example-modal-lg" id="wanshan" >
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
        <div class="modal-title">
                    <h3 class="text-center">完善/修改账号信息</h3>
                    
                </div>
                 <div class="modal-body">
                                <h4>地址</h4>
                                <input class="form-control" type="text" placeholder="住址" name="address" id="address">
                            </div>
                            <div class="modal-body">
                                <h4>年龄</h4>
                                <select class="form-control" name="age" id="age">
			                            <option>12</option>
			                            <option>13</option>
			                            <option>14</option>
			                            <option>15</option>
			                            <option>16</option>
			                            <option>17</option>
			                            <option>18</option>
			                            <option>19</option>
			                            <option>20</option>
			                            <option>21</option>
			                            <option>22</option>
			                            <option>23</option>
			                            <option>24</option>
			                            <option>25</option>
			                            <option>26</option>
			                            <option>27</option>
			                            <option>28</option>
			                            <option>29</option>
			                            <option>30</option>
			                            <option>31</option>
			                            <option>32</option>
			                            <option>33</option>
			                            <option>34</option>
			                            <option>35</option>
			                            <option>36</option>
			                            <option>37</option>
			                            <option>38</option>
			                            <option>39</option>
			                            <option>40</option>
			                            <option>41</option>
			                            <option>42</option>
			                            <option>43</option>
		                                     </select>
                            </div>
                             <div class="modal-body">
                                <h4>性别</h4>
                               <select class="form-control" name="gender" id="gender">
			                            <option>男</option>
			                            <option>女</option>
			                
			
		                                     </select>
                            </div>
                            <div class="text-right">
                                <button class="btn btn-primary" id="wanshan1" >Submit</button>
                                <button class="btn btn-primary" data-dismiss="modal">Cancel</button>
                            </div>
        </div>
    </div>
</div>
<!-- ---------------------------------------------------修改密码model----------------------------------------------------------------------------- -->
<div class="modal fade" id="xiugai" >
    <div class="modal-dialog">
        <div class="modal-content">
        <div class="modal-title">
                    <h3 class="text-center">修改密码</h3>
                    
                </div>
                 <div class="modal-body">
                                <h4>输入原密码</h4>
                                <input class="form-control" type="password" placeholder="原密码" name="password1" id="password1">
                            </div>
                             <div class="modal-body">
                                <h4>输入新密码</h4>
                                <input class="form-control" type="password" placeholder="新密码" name="newpassword" id="newpassword">
                            </div>
                             <div class="modal-body">
                                <h4>输入您注册时使用的手机号</h4>
                                <input class="form-control" type="text" placeholder="手机" name="tel1" id="tel1">
                                <span class="abc" id='tel1errorMsg' ></span>
                            </div>
                              
                             
                            <div class="modal-body">
                                <button class="btn btn-primary" id="xiugai1" >Submit</button>
                                <button class="btn btn-primary" data-dismiss="modal">Cancel</button>
                            </div>
        </div>
    </div>
</div>
<!-- -----------------------------------------------查询已发布的考试-------------------------------------------------------------------------------------- -->
          <div class="panel-heading" style="background-image: url('images/huise.jpg'); margin: 0 5.8%;" id="wdks1" hidden="true">
              <h4 class="text-center"  > 已发布的考试</h4>
              
              
              <div  style="background-image: url('images/kaoshi1.jpg') ; margin:0 10%px" >   
              <br>
               <br>
                <br>
                  <div align="center" class="panel-heading" style="font-size: 20px"><span  class="glyphicon glyphicon-send" ><font color="red" id="sfyks" style="font-size: 25px;">您暂时没有发布的考试!</font></span></div>
                 </div>
                 <div align="center">
                <button type="button" class="btn btn-info btn-sm" id="ksks">开始考试</button> 
                 </div>
              
              
              <div>
              
              
              </div>
          </div>
 <!-- -------------------------------------------考试界面------------------------------------------------------------------------------------ -->         
          <div   hidden="true" id="ksjm" style="background-image: url('images/kaoshibg.jpg'); margin: 0 5.8%;" >
          
         <h3 align="center"> 开始考试</h3>
         <h6 align="center"> 本次考试时间60分钟请注意考试时间 </h6>
         <div class="test_content">
							<div class="test_content_title" align="center">
								<h5>单选题/多选</h5>
								
							</div>
						</div>
						<div  align="center" class="bor" style="background-color: white; margin: 0 5%PX; " >
							
						<div style="font-size: 25px;">
						
						
<span>现在是第</span><i class="content_lit" id="xztm" style="font-size: 30px;color: red;">0</i><span>题</span></span><span>共</span><i class="content_lit" id="tmzs" style="font-size: 30px;color: red;"></i><span>题</span></span>
								</p></h4>
						
						</div>	
							
							
						
							<div id="timu" style="font-size: 20px;" class="test_content_nr_tt" align="left"></div>
							
							
							<div class="test_content_nr_main" align="left" >
							<ul>
							<li class="option">
							<input type="checkbox"  name="A" value="A" id="aselect">
                                    <label style="font-size: 25px;"  id="aroom">
                                  A.
                                   <p class="ue"  style="display: inline;" id="select1"></p>
                                     </label>
                                      </li>
                                            
                                            
                                    <li class="option">
							       <input type="checkbox" value="B" name="A" id="bselect">
                                    <label style="font-size: 25px;" id="broom">
                                    B.
                                     <p class="ue"  style="display: inline;" id="select2"></p>
                                     
                                     </label>
                                     </li>
                                            
                                            
                         	
							<li class="option">
							<input type="checkbox" value="C" name="A" id="cselect">
                                    <label  style="font-size: 25px;" id="croom">
                                    C.
                                 <p class="ue"  style="display: inline;" id="select3"></p>
                                     </label>
                                    </li>
                                           
                                   <li class="option">         	
							     <input type="checkbox" value="D" name="A" id="dselect">
                                    <label style="font-size: 25px;" id="droom">
D.
                                    <p class="ue"  style="display: inline;" id="select4"></p>
                                     </label>
                                    </li>
                                          
									</ul>
										
										<div align="right">
									  <button type="button" class="btn btn-danger" id="xyt" >Submit Answers</button>
									  </div>
									  
									  </div>
									  
									 
									
                               
          
          </div>
          </div>
          <div hidden="true"> <a id="realid"></a></div>
          <!-- ---------------------------------------考试成绩查询------------------------------------------------------------------------------------- -->
          <div id="cjcx1"  hidden="true"  class="panel-footer"  style="margin:0 10%px; " align="center">
           <h5 style="color:green;" >请在输入框中输入考试名：例如cgb1当堂考试的考试名，输入完成后点击查询就可以看到当堂考试的成绩！(注意考试名为小写)</h5>
          <br>
          <br>
          <br>
          <br>
          <div align="center" class="input-group input-group-lg" >
        
          <div class="input-group input-group-lg" align="center"  style="margin: 1% 5%px;">
        
     <select class="form-control"  id="cjcx3">

               <option>cgb1</option>
                <option>cgb2</option>
                <option>cgb3</option>
               <option>cgb4</option>
			    <option>cgb5</option>
			   
			     <option>cgb6</option>
			      <option>cgb7</option>
                <option>cgb8</option>
                <option>cgb9</option>
               <option>cgb10</option>
			    <option>cgb11</option>
			    <option>cgb12</option>
			    <option>cgb13</option>
			    <option>cgb14</option>
			    <option>cgb15</option>
			    <!-- <option>cgbDay6</option>
			    <option>cgbDay7</option>
			    <option>cgbDay8</option>
			    <option>cgbDay9</option>
			    <option>cgbDay10</option>
			    <option>cgbDay11</option>
			    <option>cgbDay12</option>
			    <option>cgbDay13</option>
			    <option>cgbDay14</option>
			    <option>cgbDay15</option>
			    <option>cgbDay16</option>
			    <option>cgbDay17</option>
			    <option>cgbDay18</option>
			    <option>cgbDay19</option>
			    <option>cgbDay20</option>
			    <option>cgbDay21</option>
			    <option>cgbDay22</option>
			    <option>cgbDay23</option>
			    <option>cgbDay24</option>
			    <option>cgbDay25</option>
			    <option>cgbDay26</option>
			    
			    <option>cgbDay27</option>
			    <option>cgbDay28</option>
			    <option>cgbDay29</option>
			    <option>cgbDay30</option> -->
			    </select> 
      <button type="button" class="btn"  id="cjcx4" style="margin-left: 40%;">查询成绩</button>
            </div>
            
           
        
       
              
               
              </div >
                      
              <div style="font-size: 25px;color: green;" align="center" hidden="true" id="cjcx2">
                您在<a style="fcenteront-size: 30px;color: blue;" id="cjcx5">111</a>的考试中取得了<a style="font-size: 35px;color: red;" id="cjcx6">1111</a>分
              </div>
              
              <div align="center" hidden="true" id="gaofen">
              <img  src="images/gaofen.jpg">
              </div>
              
            </div>
            <!-- ------------------------------------------------------试卷页面------------------------------------------------------------------------------------------------------------- -->
            <div id="shijuan" hidden="true"  style="margin:0 5.8%;"  class="panel-footer" align="center">
            
             <h6>说明：生成试卷同样是输入您想生成的试卷考试名，其中内容包括正确答案解析以及您选择的答案！</h6>
            
             <div class="input-group input-group-lg" align="center"  ">
        
      <select class="form-control"  id="shijuan1">

               <option>cgb1</option>
                <option>cgb2</option>
                <option>cgb3</option>
               <option>cgb4</option>
			    <option>cgb5</option>
			   
			     <option>cgb6</option>
			      <option>cgb7</option>
                <option>cgb8</option>
                <option>cgb9</option>
               <option>cgb10</option>
			    <option>cgb11</option>
			    <option>cgb12</option>
			    <option>cgb13</option>
			    <option>cgb14</option>
			    <option>cgb15</option>
			    <!-- <option>cgbDay6</option>
			    <option>cgbDay7</option>
			    <option>cgbDay8</option>
			    <option>cgbDay9</option>
			    <option>cgbDay10</option>
			    <option>cgbDay11</option>
			    <option>cgbDay12</option>
			    <option>cgbDay13</option>
			    <option>cgbDay14</option>
			    <option>cgbDay15</option>
			    <option>cgbDay16</option>
			    <option>cgbDay17</option>
			    <option>cgbDay18</option>
			    <option>cgbDay19</option>
			    <option>cgbDay20</option>
			    <option>cgbDay21</option>
			    <option>cgbDay22</option>
			    <option>cgbDay23</option>
			    <option>cgbDay24</option>
			    <option>cgbDay25</option>
			    <option>cgbDay26</option>
			    
			    <option>cgbDay27</option>
			    <option>cgbDay28</option>
			    <option>cgbDay29</option>
			    <option>cgbDay30</option> -->
			    </select>  
      <button type="button" class="btn"  id="shijuan2" style="margin-left: 40%px;">生成试卷</button>
      
     <!-- 试卷及解析 -->
     </div >	
            <div id="shijuan3" hidden="true" class="panel-heading"   >
            <div class="panel-heading" align="center"><h3>您现在正在查看的考试为:<span id="sjname" ></span></h3></div>
            
             <div style="font-size: 25px;" >
						
						
						
<div class="panel-heading" ><span>现在是第</span><i class="content_lit" id="sjxztm" style="font-size: 30px;color: red;">0</i><span>题</span></span><span>共</span><i class="content_lit" id="sjtmzs" style="font-size: 30px;color: red;"></i><span>题</span></span></div>
								</p></h4>
						<h4 id="sjtimu" ></h4>
						<h6 >您选择的答案是：<span id="myselect" style="color: red;"></span></h6>
						<div class="panel-heading" align="center" style="font-size: 20px;">A.<span id="sjselect1"></span>
						<div class="panel-heading" align="center" style="font-size: 20px;">B.<span id="sjselect2"></span>
						<div class="panel-heading" align="center" style="font-size: 20px;">C.<span id="sjselect3"></span>
						<div class="panel-heading" align="center" style="font-size: 20px;">D.<span id="sjselect4"></span>
						<div class="panel-heading"><h5>答案:<span id="sjdaan" style="font-size: 15px;color: green;"></span></h5></div>
						<div class="panel-heading"><h5>解析:<span id="sjjiexi" style="font-size: 25px;color: green;"></span></h5></div>
						</div>
					 <button type="button" class="btn btn-info btn-sm" id="sjsyt" >上一题</button>
					  <button type="button" class="btn btn-info btn-sm" id="sjxyt" >下一题</button>
					   <button type="button" class="btn btn-info btn-sm" id="sjfanhui" >返回</button>
                  
            </div>
            
            </div>
            
           
            
            
            
            
            
            <p style="font-size: 30px" ></p>
            
            
            
            
            
            </div>
            </div>
            </div>
            </div>
            
            <!-- -----------------------------------------班级排名页面-------------------------------------------------------------- -->
             <div id="bjpm1"  hidden="true" style="margin:0 5.8%;"  class="panel-footer">
            
             <div class="panel-footer" style="margin:0 5%px;">
             <span >请选择班级</span>
             <select class="form-control" name="bjpm2" id="bjpm2">
             <option>CGB-1907</option>
             <option>CGB-1906</option>
             <option>CGB-1905</option>
             <option>CGB-1904</option>
               <option>CGB-1903</option>
                <option>CGB-1902</option>
                <option>CGB-1901</option>
               <option>CGB-1812</option>
			    <option>CGB-1811</option>
			   
			  <option>CGB-1901</option>
			    </select>  
			    <div class="panel-footer">
                <span>请输入考试名(cgb1为第一次周考以此类推):</span>
           <select class="form-control" name="bjpm3" id="bjpm3">

               <option>cgb1</option>
                <option>cgb2</option>
                <option>cgb3</option>
               <option>cgb4</option>
			    <option>cgb5</option>
			   
			     <option>cgb6</option>
			      <option>cgb7</option>
                <option>cgb8</option>
                <option>cgb9</option>
               <option>cgb10</option>
			    <option>cgb11</option>
			    <option>cgb12</option>
			    <option>cgb13</option>
			    <option>cgb14</option>
			    <option>cgb15</option>
			 <!--    <option>cgbDay6</option>
			    <option>cgbDay7</option>
			    <option>cgbDay8</option>
			    <option>cgbDay9</option>
			    <option>cgbDay10</option>
			    <option>cgbDay11</option>
			    <option>cgbDay12</option>
			    <option>cgbDay13</option>
			    <option>cgbDay14</option>
			    <option>cgbDay15</option>
			    <option>cgbDay16</option>
			    <option>cgbDay17</option>
			    <option>cgbDay18</option>
			    <option>cgbDay19</option>
			    <option>cgbDay20</option>
			    <option>cgbDay21</option>
			    <option>cgbDay22</option>
			    <option>cgbDay23</option>
			    <option>cgbDay24</option>
			    <option>cgbDay25</option>
			    <option>cgbDay26</option>
			    
			    <option>cgbDay27</option>
			    <option>cgbDay28</option>
			    <option>cgbDay29</option>
			    <option>cgbDay30</option> -->
			    </select>  
             </div >
             <div class="panel-heading">
             <button type="button" class="btn btn-info btn-sm" id="bjpm4" >查询排名</button>
             </div>
             <div class="panel-heading" id="bjpm5" hidden="true">
              <div class="panel-heading" id="bjpm6" hidden="true"></div>
            
              
              
             
              <button type="button" class="btn btn-info btn-sm" id="bjpm7" >导出排名</button>
               <button type="button" class="btn btn-info btn-sm" id="bjpm8" >返回查询</button>
              <a id="bjpmmsg" hidden="true"></a>
             </div>
             </div>
             
             
              </div>
              <!-- 发布考试界面的div  具体的页面已由后台接收-->
              <div class="panel-heading" id="fabukaoshi"></div>
          
<script type="text/javascript">


function wjdc(){
	var loginUsername=$("#loginUsername").val();
	$.ajax({
		url:"wjdc",
		type:"post",
		datatype:'JSON',
		data:{loginUsername:loginUsername},
		success:function(result){


			 $("#pic2").html(result);
			 $("#pic2").show();
			 $("#bjpm1").hide();
			 $("#pic").hide();
			

			 $("#wdks1").hide();
			 $("#zhanghao1").hide();
			 $("#ksjm").hide();
			 $("#cjcx1").hide();
			 $("#cjcx2").hide();  
			 $("#shijuan").hide();
			 $("#fabukaoshi").hide();
			}
     

	});


	
}

//为完成的练习
$("#wwclx").click(function(){
	var loginUsername=$("#loginUsername").val();
    var userName=$("#login2").text();
    if(userName=="登录"||loginUsername==''){
         alert("请先登录");
        }else{
        	 $("#bjpm1").hide();
 			$("#pic").show();
 			$("#pic2").hide();
 			$("#wdks1").hide();
 			$("#ksjm").hide();
 			$("#zhanghao1").hide();
 			$("#cjcx1").hide();
 			$("#cjcx2").hide();
 			$("#shijuan").hide();
 			$("#fabukaoshi").hide();
            
        	$.ajax({
        		url:"wwclx",
        		type:"post",
        		datatype:'JSON',
        		data:{loginUsername:loginUsername},
        		success:function(result){
                  $("#pic2").html(result);
            		
        		}
        	});


        	
        }
});
$("#cwsj").click(function(){
	yemian();
});
function yemian(){
	var loginUsername=1;
	$.ajax({
		url:"yemian",
		type:"post",
		datatype:'JSON',
		data:{loginUsername:loginUsername},
		success:function(result){


			 $("#pic2").html(result);
			 $("#pic2").show();
			 $("#bjpm1").hide();
			 $("#pic").hide();
			

			 $("#wdks1").hide();
			 $("#zhanghao1").hide();
			 $("#ksjm").hide();
			 $("#cjcx1").hide();
			 $("#cjcx2").hide();  
			 $("#shijuan").hide();
			 $("#fabukaoshi").hide();
			}
     

	});


	
}

$("#bjpm8").click(function(){
	 $("#bjpm7").hide();
	 $("#bjpm8").hide();
	 $("#bjpm6").hide();
	 $("#bjpm4").show();
	
});
$("#bjpm7").click(function(){

	var classname=$("#bjpm2").val();
	var ksname=$("#bjpm3").val();
	
	daochu(classname,ksname);


	
});
function daochu(classname,ksname){
	
	
	
	
		window.location.href="daochu?classname="+classname+"&ksname="+ksname;}
			
	 
	



$("#bjpm4").click(function(){
var classname=$("#bjpm2").val();
var ksname=$("#bjpm3").val();
    bjpm(classname,ksname);
	
});
function bjpm(classname,ksname){
	$.ajax({
		url:"bjpm",
		type:"post",
		datatype:'JSON',
		data:{classname:classname,ksname:ksname},
		success:function(result){
          
             var len=result.length;
             var html=" <table class='table table-bordered'><tr>"+
                 "<th>"+"排名"+"</th>"
                 +"<th>"+"姓名"+"</th>"
                  +"<th>"+"班级"+"</th>"
                  +"<th>"+"考试名"+"</th>"
                  + "<th>"+"分数"+"</th>"
                +" </tr>";
             if( result.length==0){

            	
               alert("您输入的考试名和班级暂时没有人完成考试");
             
           
			}else{
				
                 for(var i=1;i<=len;i++){
                     var s=result[i-1][ksname];
                	 html += "<tr class='active'>";
                	 html +=     "<td >" + i +"</td>"
                         html +=     "<td >" + result[i-1].userName + "</td>"
                          html +=     "<td >" + result[i-1].banji + "</td>"
                          html +=     "<td >" + ksname + "</td>"
                          html +=     "<td >" + s+ "</td>"
                         html += "</tr>";
                    
                     }
                 html=html+"</table>";
                    $("#bjpm6").html(html);
                    $("#bjpm5").show();
                    $("#bjpm7").show();
               	 $("#bjpm8").show();
               	 $("#bjpm6").show();
                    $("#bjpm4").hide();
                    
				}
		}
	});


	
}

$("#bjpm").click(function(){
	var loginUsername=$("#loginUsername").val();
    var userName=$("#login2").text();
    if(userName=="登录"||loginUsername==''){
         alert("请先登录");
        }else{
$("#bjpm1").show();
$("#pic").hide();
$("#pic2").hide();

$("#wdks1").hide();
$("#zhanghao1").hide();
$("#ksjm").hide();
$("#cjcx1").hide();
$("#cjcx2").hide();  
$("#shijuan").hide();
$("#fabukaoshi").hide();
}
});
zongfen=0;
 $("#login1").click(function(){

	
	 
	 var loginUsername=$("#loginUsername").val();
	 var password=$("#password").val();
	 if(loginUsername!=''&&password!=''){
		 checkLogin(loginUsername,password);

				 }else{

			alert("请输入账号密码");
				 }
					});

function checkLogin(loginUsername,password){
$.ajax({
		url:"loginUser",
		type:"post",
		datatype:'JSON',
		data:{loginUsername:loginUsername,password:password},
		success:function(result){
			
			if(result==null||result==""){

alert("账号或密码错误");

				}else{

              var userName=result.userName;
              $("#huanying").text("欢迎您:");
              $("#login2").text(userName);
              $("#login2").attr('data-toggle','#');
              $('#login').modal('hide');
              if(result.status==0){
                        var wjdc1="<a  id='wjdc' style='color:#FE9A2E;' onclick='wjdc()' > 问卷调查</a>";
                        $("#wjdcshow").html(wjdc1);
                  }else if(result.status>=3){
                        
             var teacherselect=" <a  class='dropdown-toggle' data-toggle='dropdown' role='button' aria-expanded='false' aria-haspopup='true' style='color:#FE9A2E;'>项目经理选项<span class='caret'></span> </a>"+
             "<ul class='dropdown-menu'>"+
            " <li ><a  id='wdks' style='color:#FE9A2E;' onclick='wjdcxq()' >问卷调查详情</a></li>"+
            
                               "</ul>";
             var addmstm="<a  id='mstmadd1' style='color:#FE9A2E;'>添加题目</a>";
             $("#teacherselect").html(teacherselect);
             $("#mstmadd").html(addmstm);
                      }
              

					}
			
		}
	
	
});
	
	
}
//请求添加面试题页面
$("#mstmadd").click(function(){
	
$.ajax({

	url:"mstmadd",
	    type:"post",
	    datatype:"json",
	    success:function(result){
		    
		    $("#pic2").html(result);
		    $("#pic2").show();
        	$("#pic").hide();
        	$("#wdks1").hide();
        	$("#zhanghao1").hide();
        	$("#pic").hide();
        	$("#wdks1").hide();
        	$("#bjpm1").hide();
        	$("#ksjm").hide();
        	$("#cjcx1").hide();
        	$("#cjcx2").hide();
        	$("#shijuan").hide();
        	$("#fabukaoshi").hide();
		    }});

	
});
$("#tuichu").click(function(){
	 location.reload();

	
});



$("#zhanghao").click(function(){
	
      var loginUsername=$("#loginUsername").val();
      var userName=$("#login2").text();
      if(userName=="登录"||loginUsername==''){
           alert("请先登录");
          }else{
$.ajax({
		url:"findUser",
		type:"post",
		datatype:'JSON',
		data:{loginUsername:loginUsername},
		success:function(result){
            if(result!=null){
            	$("#pic2").hide();
            	$("#pic").hide();
            	$("#wdks1").hide();
            	$("#zhanghao1").show();
            	$("#pic").hide();
            	$("#wdks1").hide();
            	$("#bjpm1").hide();
            	$("#ksjm").hide();
            	$("#cjcx1").hide();
            	$("#cjcx2").hide();
            	$("#shijuan").hide();
            	$("#fabukaoshi").hide();
            	
            	$("#xxuserName").text(result.userName);
            	$("#xxloginUsername").text(result.loginUsername);
    			$("#xxtel").text(result.tel);
    			$("#xxbanji").text(result.banji);
    			$("#xxaddress").text(result.address);
    			$("#xxage").text(result.age);
    			$("#xxgender").text(result.gender);
    			
                }
			
		},
		error:function(){
			alert('请先登录!')

		}
	
	
});
          }
	});


$("#fanhui1").click(function(){

	$("#pic").show();
	

	$("#wdks1").hide();
	$("#zhanghao1").hide();
	$("#ksjm").hide();
	$("#cjcx1").hide();
	$("#cjcx2").hide();  
	$("#shijuan").hide();
	$("#bjpm1").hide();
	$("#pic2").hide();
	
});
//验证并且提交完善账号信息
$("#wanshan1").click(function(){

var address=$("#address").val();
var age =$("#age").val();
var gender=$("#gender").val();
var loginUsername=$("#loginUsername").val();
       if(address!=''&&age!=''&&gender!=''){
    	   $('#wanshan').modal('hide');
           wanshan(age,address,gender,loginUsername);
           }else{

   alert("请填写完善信息");
               }

	});

function wanshan(age,address,gender,loginUsername){

     $.ajax({

    	 url:"wanshan",
 		type:"post",
 		datatype:'JSON',
 		data:{age:age,address:address,gender:gender,loginUsername:loginUsername},
 		success:function(result){

   if(result=="true"){

        alert("账号信息完善成功");
        $("#xxaddress").text(address);
		$("#xxage").text(age);
		$("#xxgender").text(gender);
	   }else{

            alert("完善账号失败");
		   }


 	 		}





         });

	
}
//验证用户信息中年龄参数必须为数字




//验证手机号

$("#xiugai1").click(function(){

var password=$("#password1").val();
var newpassword =$("#newpassword").val();
var tel=$("#tel1").val();
var loginUsername=$("#loginUsername").val();
       if(password!=''&&tel!=''&&newpassword!=''){
    	   $('#xiugai').modal('hide');
           xiugai(password,newpassword,tel,loginUsername);
           }else{

   alert("请输入完整在提交!");
               }

	});

function xiugai(password,newpassword,tel,loginUsername){

     $.ajax({

    	 url:"xgpassword",
 		type:"post",
 		datatype:'JSON',
 		data:{password:password,newpassword:newpassword,tel:tel,loginUsername:loginUsername},
 		success:function(result){

   if(result=="true"){

        alert("密码修改成功");
      
	   }else{

            alert("请输入正确的验证信息或联系管理员");
            
		   }


 	 		}





         });

	
}
$("#wdks").click(function(){

	var loginUsername=$("#loginUsername").val();
	var userName=$("#login2").text();
	
	if(loginUsername!=""&&userName!="登录"){
		$("#bjpm1").hide();
		$("#pic").hide();
		$("#wdks1").show();
		$("#ksjm").hide();
		$("#zhanghao1").hide();
		$("#pic2").hide();
		$("#cjcx1").hide();
		$("#cjcx2").hide();
		$("#shijuan").hide();
		$("#fabukaoshi").hide();
     xsks(loginUsername);
         

		}else{
			alert("请先登录!");
			}

		});

function xsks(loginUsername){

	   $.ajax({

	    	 url:"xsks",
	 		type:"post",
	 		datatype:'JSON',
	 		data:{loginUsername:loginUsername},
	 		success:function(result){
		 		if(result=="false"){

                    alert("您暂时没有发布的考试！");

			 		}else{
                          $("#sfyks").text(result);
                         
				 		}
	 		}

	   });

	
}
$("#sy").click(function(){

	        $("#bjpm1").hide();
			$("#pic").show();
			$("#pic2").hide();
			$("#wdks1").hide();
			$("#ksjm").hide();
			$("#zhanghao1").hide();
			$("#cjcx1").hide();
			$("#cjcx2").hide();
			$("#shijuan").hide();
			$("#fabukaoshi").hide();

		});
$("#ksks").click(function(){

	var sfyks=$("#sfyks").text();
	var xztm=$("#xztm").text();
	if(sfyks=="您暂时没有发布的考试!"){
		alert("您暂时没有发布的考试!");

		}else{
	$("#pic").hide();
	$("#wdks1").hide();
	$("#zhanghao1").hide();
	$("#ksjm").show();
	$("#cjcx1").hide();
	$("#cjcx2").hide();
	$("#shijuan").hide();
	$("#bjpaiming").hide();
	$("#fabukaoshi").hide();
	var ksname=$("#sfyks").text();
	
	tmzs(ksname);
	xztm1(xztm);
		}

});
function tmzs(ksname){
 $.ajax({
      
	     url:"tmzs",
		type:"post",
		datatype:'JSON',
		data:{ksname:ksname},
		success:function(result){
	 		    if(result==0){

                         alert("题库中没有题目请联系项目经理！");
		 		    }

		 		else{
			 		
                   $("#tmzs").text(result);
                  $("#sjtmzs").text(result);
			 		}
		}



	 });



	
}
function xztm1(xztm){
	var tmzs=$("#tmzs").text();
	var xztm=$("#xztm").text();
	var ksname=$("#sfyks").text();
	 if(tmzs==xztm){
		 
         alert("您已完成所以题目!您现在可以查询成绩本页面将关闭");
         $("#pic").show();
 		$("#wdks1").hide();
 		$("#ksjm").hide();
 		$("#zhanghao1").hide();
 		$("#cjcx1").hide();
 		$("#cjcx2").hide();
 		$("#shijuan").hide();
 		$("#bjpm1").hide();
 		$("#fabukaoshi").hide();
 		jiluzongfen(zongfen);
         
         
	    }else{
	$.ajax({
	      
	     url:"xztm",
		type:"post",
		datatype:'JSON',
		data:{xztm:xztm,ksname:ksname},
		success:function(result){
			$("#xztm").text(result.tmid);
			
			$("#timu").html(result.timu);
			
			$("#select1").html(result.xuanXiang1);
			$("#select2").html(result.xuanXiang2);
			$("#select3").html(result.xuanXiang3);
			$("#select4").html(result.xuanXiang4);
			$("#realid").text(result.id);
			
			
			
	 		   
		}



	 });

	    }
	
}

$("#xyt").click(function(){

	var xztm=$("#xztm").text();
	var ksname=$("#sfyks").text();
	var loginUsername=$("#loginUsername").val();
	var daan =[];//定义一个数组    
    $('input[name="A"]:checked').each(function(){//遍历每一个名字为interest的复选框，其中选中的执行函数    
    daan.push($(this).val());//将选中的值添加到数组chk_value中    
   
    });
  
   var realid= $("#realid").text();
   
    if(daan.length==0){
          alert("您还没有选择答案!");

        }else{
            yuejuan(daan,realid);
            jiludaan(daan,xztm,loginUsername,ksname);
        	xztm1(xztm);
        	 $(":checkbox[type='checkbox']").prop("checked", false);
        	 
            }
    
    
	
});
function jiludaan(daan,xztm,loginUsername,ksname){
	$.ajax({
	      
	     url:"jiludaan",
		type:"post",
		datatype:'JSON',
		data:{daan:daan,xztm:xztm,loginUsername:loginUsername,ksname:ksname},
		traditional:true,
		success:function(result){
                
              

			}
           
	});

	
}
function yuejuan(daan,realid){
	
	$.ajax({
	      
	     url:"yuejuan",
		type:"post",
		datatype:'JSON',
		data:{daan:daan,realid:realid},
		traditional:true,
		success:function(result){
                 
                 zongfen=result+zongfen;

			}
            
	});

	
}
//将总分统计入库
function jiluzongfen(zongfen){
	var loginUsername=$("#loginUsername").val();
	var ksname=$("#sfyks").text();
	$.ajax({
	      
	     url:"fenshu",
		type:"post",
		datatype:'JSON',
		data:{zongfen:zongfen,loginUsername:loginUsername,ksname:ksname},
		traditional:true,
		success:function(result){
                
                alert(result);
                $("#sfyks").text("您暂时没有发布的考试!");
			}
           
	});  

	
}
//成绩查询
$("#cjcx").click(function(){
	 var loginUsername=$("#loginUsername").val();
     var userName=$("#login2").text();
     if(userName=="登录"||loginUsername==''){
          alert("请先登录");
         }else{
	$("#pic").hide();
	$("#wdks1").hide();
	$("#zhanghao1").hide();
	$("#ksjm").hide();
	$("#cjcx1").show();
	$("#cjcx2").hide();
	$("#pic2").hide();
	$("#shijuan").hide();
	$("#bjpm1").hide();
	$("#fabukaoshi").hide();
         }
	
});
$("#cjcx4").click(function(){    
  
	 var ksname=$("#cjcx3").val();
	 var loginUsername=$("#loginUsername").val();
	 kscj(ksname,loginUsername);
});
	function kscj(ksname,loginUsername){

		$.ajax({
		      
		     url:"kscj",
			type:"post",
			datatype:'JSON',
			data:{loginUsername:loginUsername,ksname:ksname},
			traditional:true,
			success:function(result){
				if(result==""){

                        alert("你并未参加该次考试或该考试不存在");
					}else{
	                $("#cjcx5").text(ksname);
	                $("#cjcx6").text(result);
	                $("#cjcx2").show();
	                $("#gaofen").show();
			}
				}
	           
		});  

		}

	$("#fbks").click(function(){   

	    
		 var loginUsername=$("#loginUsername").val();
	     var userName=$("#login2").text();
	     if(userName=="登录"||loginUsername==''){
	          alert("请先登录");
	     }else{
               vipex(loginUsername);
	     }
		 });
	 function vipex(loginUsername){
       $.ajax({

    	   url:"vipex",
   		type:"post",
   		datatype:'JSON',
   		data:{loginUsername:loginUsername},
   		traditional:true,
   		success:function(result){
   	   		if(result=="true"){
                   fabukaoshi(loginUsername);
   	   	   		}else{

                 alert("只有班长组长和项目经理才可以发布考试哦！");
                 
   	   	   	   		}
   		}
           


           });

		 }
	 function fabukaoshi(loginUsername){
		 $.ajax({

	    	   url:"fabukaoshi",
	   		type:"post",
	   		datatype:'JSON',
	   		data:{loginUsername:loginUsername},
	   		traditional:true,
	   		success:function(result){
                  
		   		   $("#fabukaoshi").html(result);
		   		   $("#fabukaoshi").show();
		   		$("#pic").hide();
		   		$("#wdks1").hide();
		   		$("#zhanghao1").hide();
		   		$("#ksjm").hide();
		   		$("#cjcx1").hide();
		   		$("#cjcx2").hide();
		   		$("#shijuan").hide();
		   		$("#bjpm1").hide();
		   		
	   		}
		 });

		 }
	
	$("#ykssj").click(function(){   
		 var loginUsername=$("#loginUsername").val();
		 var userName=$("#login2").text();
		 if(userName=="登录"||loginUsername==''){
	          alert("请先登录")
	     }else{
	$("#shijuan").show();
	$("#pic").hide();
	$("#wdks1").hide();
	$("#zhanghao1").hide();
	$("#ksjm").hide();
	$("#cjcx1").hide();
	$("#cjcx2").hide();
	$("#pic2").hide();
	$("#bjpm1").hide();
	$("#fabukaoshi").hide();
		 }
		 });
	 
$("#shijuan2").click(function(){ 
var ksname=$("#shijuan1").val();
var loginUsername=$("#loginUsername").val();
if(ksname==''||ksname==null){
	alert("请输入你要查看的试卷考试名例如cgb1");
     }else{
		
     $("#shijuan2").hide();

     $("#shijuan1").hide();
         
     

     shijuancc(loginUsername);


         
}

		  });


function shijuancc(loginUsername){
       
	var sjname=$("#shijuan1").val();
	
	$.ajax({
	      
	     url:"shijuancc",
		type:"post",
		datatype:'JSON',
		data:{loginUsername:loginUsername,sjname:sjname},
		traditional:true,
		success:function(result){
			if(result=="false"){
                   alert("您还没有参加该次考试，无法查看试卷");
                   $("#shijuan2").show();

                   $("#shijuan1").show();
				}else  if(result=="true"){
                       
                        var sjxztm=$("#sjxztm").text();
                        var sjname=$("#shijuan1").val();
                        $("#sjname").text(sjname);
                        tmzs(sjname);
                         sjed(sjxztm,sjname,loginUsername);
                         selectmydaan(loginUsername,sjname,sjxztm);
                       $("#shijuan3").show();
					}
		         }
			
          
	});  


	
}
function sjed(sjxztm,sjname,loginUsername){

	$.ajax({
	      
	     url:"sjed",
		type:"post",
		datatype:'JSON',
		data:{loginUsername:loginUsername,sjname:sjname,sjxztm:sjxztm},
		traditional:true,
		success:function(result){
                 $("#sjtimu").html(result.timu);
              	$("#sjxztm").text(result.tmid);
    		
    			
    			$("#sjselect1").text(result.xuanXiang1);
    			$("#sjselect2").text(result.xuanXiang2);
    			$("#sjselect3").text(result.xuanXiang3);
    			$("#sjselect4").text(result.xuanXiang4);
    			$("#sjjiexi").text(result.jieXi);
                  $("#sjdaan").text(result.daAn);
			}
	});

	
}
function selectmydaan(loginUsername,sjname,sjxztm){

	$.ajax({
	      
	     url:"selectmydaan",
		type:"post",
		datatype:'JSON',
		data:{loginUsername:loginUsername,sjname:sjname,sjxztm:sjxztm},
		traditional:true,
		success:function(result){
              
           $("#myselect").text(result);
			
		}
	});
	
}
$("#sjxyt").click(function(){
var loginUsername=$("#loginUsername").val();
var sjname=$("#shijuan1").val();
var sjxztm=$("#sjxztm").text();
var sjtmzs=$("#sjtmzs").text();

if(sjxztm==sjtmzs){

	alert("现在您查看的已经是最后一道题！");
}else{

	 sjed(sjxztm,sjname,loginUsername);
     selectmydaan(loginUsername,sjname,sjxztm);
}

	
});
$("#sjsyt").click(function(){
	var loginUsername=$("#loginUsername").val();
	var sjname=$("#shijuan1").val();
	var sjxztm1=$("#sjxztm").text();
	var sjtmzs=$("#sjtmzs").text();

	if(sjxztm1==1){

		alert("现在您查看的是第一题没有上一题哦！");
	}else{
		
		var sjxztm=sjxztm1-2;
		
		 sjed(sjxztm,sjname,loginUsername);
	     selectmydaan(loginUsername,sjname,sjxztm);
	}

		
	});
$("#aroom").click(function(){
	
	if($("#aselect").prop("checked")==true){
		$("#aselect").prop("checked",false);
		}else{
			$("#aselect").prop("checked",true);
			}
});
$("#broom").click(function(){
	
	if($("#bselect").prop("checked")==true){
		$("#bselect").prop("checked",false);
		}else{
			$("#bselect").prop("checked",true);
			}
});
$("#croom").click(function(){
	
	if($("#cselect").prop("checked")==true){
		$("#cselect").prop("checked",false);
		}else{
			$("#cselect").prop("checked",true);
			}
});
$("#droom").click(function(){
	
	if($("#dselect").prop("checked")==true){
		$("#dselect").prop("checked",false);
		}else{
			$("#dselect").prop("checked",true);
			}
});
$("#sjfanhui").click(function(){
	
	 $("#shijuan2").show();

     $("#shijuan1").show();
     $("#shijuan3").hide();
	
});

function wjdcxq(){
    var loginUsername=1;
    $.ajax({
	      
	     url:"wjdcxq",
		type:"post",
		datatype:'JSON',
		data:{loginUsername:loginUsername},
		traditional:true,
		success:function(result){
             
          $("#pic2").html(result);




			
		}
	});

	
}
	


 $(function(){ 

		var mW=600;
		var mH=600;
		var canvas = document.createElement('canvas');
		
		canvas.height = mH;
		canvas.width = mW;
		mCtx = canvas.getContext('2d');
		var mCount = 6; //边数
		var mCenter = mW /2; //中心点
		var mRadius = mCenter - 50; //半径(减去的值用于给绘制的文本留空间)
		var mAngle = Math.PI * 2 / mCount; //角度
		var mColorPolygon = '#B8B8B8'; //多边形颜色
		var mData = [['java基础', 50],
	        ['javaweb', 50],
	        ['框架基础', 50],
	        ['微服务', 50],
	        ['linux基础', 50],
	        ['数据库', 50]];
		drawPolygon(mCtx);
		drawLines(mCtx);
		drawText(mCtx);
		drawRegion(mCtx,mData);
		drawCircle(mCtx,mData,mCenter);
		 function drawPolygon(ctx){
			    ctx.save();

			    ctx.strokeStyle = mColorPolygon;
			    var r = mRadius/ mCount; //单位半径
			    //画6个圈
			    for(var i = 0; i < mCount; i ++){
			        ctx.beginPath();        
			        var currR = r * ( i + 1); //当前半径
			        //画6条边
			        for(var j = 0; j < mCount; j ++){
			            var x = mCenter + currR * Math.cos(mAngle * j);
			            var y = mCenter + currR * Math.sin(mAngle * j);

			            ctx.lineTo(x, y);
			        }
			        ctx.closePath()
			        ctx.stroke();
			    }

			    ctx.restore();
			}

		var mColorLines = '#B8B8B8'; //顶点连线颜色

		//顶点连线
		function drawLines(ctx){
		 ctx.save();

		 ctx.beginPath();
		 ctx.strokeStyle = mColorLines;

		 for(var i = 0; i < mCount; i ++){
		     var x = mCenter + mRadius * Math.cos(mAngle * i);
		     var y = mCenter + mRadius * Math.sin(mAngle * i);

		     ctx.moveTo(mCenter, mCenter);
		     ctx.lineTo(x, y);
		 }

		 ctx.stroke();

		 ctx.restore();
		}


		

//绘制文本
function drawText(ctx){
	var mData = [['java基础', 50],
        ['javaweb', 50],
        ['框架基础', 50],
        ['微服务', 50],
        ['linux基础', 50],
        ['数据库', 50]]; //数据
        
var mColorText = '#000000';
	
    ctx.save();
var j=0;
    var fontSize = mCenter / 12;
    ctx.font = fontSize + 'px Microsoft Yahei';
    ctx.fillStyle = mColorText;

    for(var i = 0; i < mCount; i ++){
        var x = mCenter + mRadius * Math.cos(mAngle * i);
        var y = mCenter + mRadius * Math.sin(mAngle * i);

        //通过不同的位置，调整文本的显示位置
        if( mAngle * i >= 0 && mAngle * i <= Math.PI / 2 ){
            ctx.fillText(mData[i][j], x, y + fontSize); 
        }else if(mAngle * i > Math.PI / 2 && mAngle * i <= Math.PI){
            ctx.fillText(mData[i][j], x - ctx.measureText(mData[i][0]).width, y + fontSize);    
        }else if(mAngle * i > Math.PI && mAngle * i <= Math.PI * 3 / 2){
            ctx.fillText(mData[i][j], x - ctx.measureText(mData[i][0]).width, y);   
        }else{
            ctx.fillText(mData[i][j], x, y);
        }

    }

    ctx.restore();
}


//覆盖区域
function drawRegion(ctx,mData){
    ctx.save();

    ctx.beginPath();
    for(var i = 0; i < mCount; i ++){
        var x = mCenter + mRadius * Math.cos(mAngle * i) * mData[i][1] / 100;
        var y = mCenter + mRadius * Math.sin(mAngle * i) * mData[i][1] / 100;

        ctx.lineTo(x, y);
    }
    ctx.closePath();
    ctx.fillStyle = 'rgba(255, 0, 0, 0.5)';
    ctx.fill();

    ctx.restore();
}
//绘制数据点
function drawCircle(ctx,mData,mCenter){
    ctx.save();

    var r = mCenter / 50;
    for(var i = 0; i < mCount; i ++){
        var x = mCenter + mRadius * Math.cos(mAngle * i) * mData[i][1] / 100;
        var y = mCenter + mRadius * Math.sin(mAngle * i) * mData[i][1] / 100;

        ctx.beginPath();            
        ctx.arc(x, y, r, 0, Math.PI * 2);
        ctx.fillStyle = 'rgba(255, 0, 0, 0.8)';
        ctx.fill();
    }       

    ctx.restore();
}


		$("#pic").html(canvas);
	
		
		
	
	});  

 function cuoti(){
     var loginUsername=$("#loginUsername").val();
     var userName=$("#login2").text();
     if(loginUsername!=""&&userName!="登录"){
 		
          
 		  $.ajax({

 	    	   url:"cuoti",
 	   		type:"post",
 	   		datatype:'JSON',
 	   		data:{loginUsername:loginUsername},
 	   		traditional:true,
 	   		success:function(result){
 	   	   		$("#pic2").html(result);
 	   	   	   $("#bjpm1").hide();
 	 		   $("#pic").hide();
 	 		   $("#wdks1").hide();
 	 		   $("#ksjm").hide();
 	 		$("#zhanghao1").hide();
 	 		$("#pic2").show();
 	 		$("#cjcx1").hide();
 	 		$("#cjcx2").hide();
 	 		$("#shijuan").hide();
 	 		$("#fabukaoshi").hide();
 	   		}
 	           


 	           });
 	          

 		}else{
 			alert("请先登录!");
 			}

 		

	 }
 $("#mstmfx").click(function(){
	 var loginUsername=$("#loginUsername").val();
     var userName=$("#login2").text();
     if(loginUsername!=""&&userName!="登录"){
 		
          
 		  $.ajax({

 	    	   url:"mymstm",
 	   		type:"post",
 	   		datatype:'JSON',
 	   		
 	   		traditional:true,
 	   		success:function(result){
 	   	   		$("#pic2").html(result);
 	   	   	   $("#bjpm1").hide();
 	 		   $("#pic").hide();
 	 		   $("#wdks1").hide();
 	 		   $("#ksjm").hide();
 	 		$("#zhanghao1").hide();
 	 		$("#pic2").show();
 	 		$("#cjcx1").hide();
 	 		$("#cjcx2").hide();
 	 		$("#shijuan").hide();
 	 		$("#fabukaoshi").hide();
 	   		}
 	           


 	           });
 	          

 		}else{
 			alert("请先登录!");
 			}

	 });


</script>

 <div class="navbar-fixed-bottom" style="margin: 0 5.8%" align="center">
		
			
	<p>copy-2019-597845366@qq.com-1.0.1 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tel:17726443713 &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
		WeChat:17726443713&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;QQ:597845366</p>  
	</div> 
	
</body>
</html>