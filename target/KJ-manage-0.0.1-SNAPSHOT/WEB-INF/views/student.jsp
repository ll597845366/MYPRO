<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
   <% String path=request.getContentType(); %>
<!DOCTYPE html>
<html>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta charset="utf-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="左右结构项目，属于大人员的社交工具">
        <meta name="keywords" content="左右结构项目 社交 占座 ">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <meta name="format-detection" content="telephone=no">
        <title>学员信息管理系统</title>
</head>

<script type="text/javascript" src="jquery/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script>
            $(function() {
                $(".meun-item").click(function() {
                    $(".meun-item").removeClass("meun-item-active");
                    $(this).addClass("meun-item-active");
                    var itmeObj = $(".meun-item").find("img");
                    itmeObj.each(function() {
                        var items = $(this).attr("src");
                        items = items.replace("_grey.png", ".png");
                        items = items.replace(".png", "_grey.png")
                        $(this).attr("src", items);
                    });
                    var attrObj = $(this).find("img").attr("src");
                    ;
                    attrObj = attrObj.replace("_grey.png", ".png");
                    $(this).find("img").attr("src", attrObj);
                });
                $("#topAD").click(function() {
                    $("#topA").toggleClass(" glyphicon-triangle-right");
                    $("#topA").toggleClass(" glyphicon-triangle-bottom");
                });
                $("#topBD").click(function() {
                    $("#topB").toggleClass(" glyphicon-triangle-right");
                    $("#topB").toggleClass(" glyphicon-triangle-bottom");
                });
                $("#topCD").click(function() {
                    $("#topC").toggleClass(" glyphicon-triangle-right");
                    $("#topC").toggleClass(" glyphicon-triangle-bottom");
                });
                $(".toggle-btn").click(function() {
                    $("#leftMeun").toggleClass("show");
                    $("#rightContent").toggleClass("pd0px");
                })
            })
        </script>
      
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/common.css" />
        <link rel="stylesheet" type="text/css" href="css/slide.css" />
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="css/flat-ui.min.css" />
        <link rel="stylesheet" type="text/css" href="css/jquery.nouislider.css">
    </head>

    <body>
        <div id="wrap">
            <!-- 左侧菜单栏目块 -->
            <div class="leftMeun" id="leftMeun">
                <div id="logoDiv">
                    <p id="logoP"><img id="logo" alt="学员信息管理" src="images/logo.png"><span>学员信息管理系统</span></p>
                </div>
                <div id="personInfor">
                    <p id="userName">管理用户</p>
                   
                    <p>
                        <a href="http://localhost:8060/KJ-manage/KongJian/login" >退出登录</a>
                    </p>
                </div>
                <div class="meun-title">账号管理</div>
                
                <div class="meun-item" href="#char" aria-controls="char" role="tab" data-toggle="tab">
                <img src="http://localhost:8060/KJ-manage/images/icon_chara_grey.png">权限管理</div>
                <div class="meun-item" href="#user" aria-controls="user" role="tab" data-toggle="tab"><img src="images/icon_user_grey.png"> 学员信息</div>
                <div class="meun-item" href="#chan" aria-controls="chan" role="tab" data-toggle="tab"><img src="images/icon_change_grey.png">修改密码</div>
                <div class="meun-title">地区管理</div>

                <div class="meun-item" href="#regu" aria-controls="regu" role="tab" data-toggle="tab"><img src="images/icon_rule_grey.png">规则管理</div>
                <div class="meun-item" href="#stud" aria-controls="stud" role="tab" data-toggle="tab"><img src="images/icon_card_grey.png">人员信息</div>
                <div class="meun-item" href="#sitt" aria-controls="sitt" role="tab" data-toggle="tab"><img src="images/icon_char_grey.png">座位管理</div>
       
      </div>
      </div>
      
        <div>
        <div id="user">
        <table id="table"></table>
        <table data-toggle="table" data-url="data1.json">
    <thead>
        <tr>
            <th data-field="id">序号</th>
            <th data-field="name">名称</th>
            <th data-field="price">价格</th>
        </tr>
    </thead>
</table>

        
        
        
        
        
        </div>
        
        
        
        
        
        </div>
</body>






</html>