<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html class="x-admin-sm">
    
    <head>
        <meta charset="UTF-8">
        <title>欢迎页面-X-admin2.2</title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        <link rel="stylesheet" href="./css/font.css">
        <link rel="stylesheet" href="./css/xadmin.css">
        <script type="text/javascript" src="./lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="./js/xadmin.js"></script>
        <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
        <!--[if lt IE 9]>
            <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
            <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
        <![endif]--></head>
    
    <body onunload="window.opener.location.reload();">
        <div class="layui-fluid">
            <div class="layui-row">
                <form class="layui-form" action="/shixun3/admin/insertuser" method="post" enctype="multipart/form-data" accept-charset="UTF-8">
                	<%-- <input id="goods_id" name="goods_id" type="hidden" value ="${goods_id }"/> --%>
                	
                	<div class="layui-form-item">
                        <label for="L_email" class="layui-form-label">
                            <span class="x-red">*</span>ID</label>
                        <div class="layui-input-inline">
                            <input type="text" id="userid" name="userid"  required=""  autocomplete="off" class="layui-input">
                        </div>                       
                    </div>
                    
                    <div class="layui-form-item">
                        <label for="L_email" class="layui-form-label">
                            <span class="x-red">*</span>用户名</label>
                        <div class="layui-input-inline">
                            <input type="text" id="username" name="username"  required=""  autocomplete="off" class="layui-input">
                        </div>          
                    </div>
                    
                    <div class="layui-form-item">
                        <label for="username" class="layui-form-label">
                            <span class="x-red">*</span>密码</label>
                        <div class="layui-input-inline">
                            <input type="text" id="password" name="password" required="" lay-verify="required" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                                     
                    <div class="layui-form-item">
                        <label for="username" class="layui-form-label">
                            <span class="x-red">*</span>性别</label>
                        <div class="layui-input-inline">
                            <input type="text" id="sex" name="sex" required="" lay-verify="required" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                                       
                    <div class="layui-form-item">
                        <label for="username" class="layui-form-label">
                            <span class="x-red">*</span>图片</label>
                        <div class="layui-input-inline">
                            <input type="file" id="photo" name="photo" multiple="multiple" accept="image/*" required="" lay-verify="required" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    
                    <div class="layui-form-item">
                        <label for="username" class="layui-form-label">
                            <span class="x-red">*</span>职业</label>
                        <div class="layui-input-inline">
                            <input type="text" id="profession" name="profession" required="" lay-verify="required" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                   
                    <div class="layui-form-item">
                        <label for="username" class="layui-form-label">
                            <span class="x-red">*</span>地址</label>
                        <div class="layui-input-inline">
                            <input type="text" id="home" name="home" required="" lay-verify="required" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    
                    <div class="layui-form-item">
                        <label for="username" class="layui-form-label">
                            <span class="x-red">*</span>生日</label>
                        <div class="layui-input-inline">
                            <input type="text" id="birthday" name="birthday" required="" lay-verify="required" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    
                    <div class="layui-form-item">
                        <label for="username" class="layui-form-label">
                            <span class="x-red">*</span>个性签名</label>
                        <div class="layui-input-inline">
                            <input type="text" id="label" name="label" required="" lay-verify="required" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    
        <div class="layui-form-item">
            <label for="L_repass" class="layui-form-label"></label>
            <input type="submit" ></div>
            
        </form>
        </div>
        </div>
        <script>
        function btn() {
            // 获得frame索引
            console.log(4);
            Document.charset="utf-8";
            var index = parent.layer.getFrameIndex(window.name);
            //关闭当前frame
            // 获得frame索引

		window.location.reload();
		var index = parent.layer.getFrameIndex(window.name);
          //关闭当前frame
        parent.layer.close(index);
                       
         
        }
        
        
        layui.use(['form', 'layer'],
            function() {
                $ = layui.jquery;
                var form = layui.form,
                layer = layui.layer;

                //自定义验证规则
               /*  form.verify({
                    nikename: function(value) {
                        if (value.length < 5) {
                            return '昵称至少得5个字符啊';
                        }
                    },
                    pass: [/(.+){6,12}$/, '密码必须6到12位'],
                    repass: function(value) {
                        if ($('#L_pass').val() != $('#L_repass').val()) {
                            return '两次密码不一致';
                        }
                    }
                }); */

                //监听提交
                form.on('submit(add)',
                function(data) {
                    console.log(data);
                    //发异步，把数据提交给php
                    layer.alert("增加成功", {
                        icon: 6
                    },
                    function() {
                        // 获得frame索引
                        var index = parent.layer.getFrameIndex(window.name);
                        //关闭当前frame
                        parent.layer.close(index);
                    });
                    return false;
                });

            });</script>
        <script>var _hmt = _hmt || []; (function() {
                var hm = document.createElement("script");
                hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
                var s = document.getElementsByTagName("script")[0];
                s.parentNode.insertBefore(hm, s);
            })();</script>
    </body>

</html>