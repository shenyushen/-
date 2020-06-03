<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
        <script type="text/javascript">
	        function add() {
	        	
	        	 $("#fileDiv").append($("<div>文件:<input type='file' name='myfile'/><input type='button' value='删除' onclick='removeButton(this);'/></div>"));
	        	}
	        function removeButton(obj) {
	        	$(obj).parent("div").remove();
	        	}
	        
	        function aaa() {
	        	if (myform.theme.value=="")
	            {
	                myform.theme.focus();
	                return false;
	            }
	        	if (myform.riqi.value=="")
	            {
	                myform.riqi.focus();
	                return false;
	            }
	        	if (myform.myfile.value.length==0)
	            {
	        		document.getElementsByName('myfile').focus();
	        		return false;
	            }
	        	alert("修改成功");
		        var index = parent.layer.getFrameIndex(window.name);
	                //关闭当前frame
	            parent.layer.close(index); 
	        	
	        }
	        
        </script>
        <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
        <!--[if lt IE 9]>
            <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
            <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
        <![endif]--></head>
    
    <body>
        <div class="layui-fluid">
            <div class="layui-row">
                <form class="layui-form" name="myform" action="/shixun3/findweb/myupdate" method="post" enctype="multipart/form-data" accept-charset="UTF-8" >
                
                	<div class="layui-form-item" >
                        <label for="menu_name" class="layui-form-label">
                            <span class="x-red">*</span>find id</label>
                        <div class="layui-input-inline">
                        <p class="layui-input"  style="position: absolute;margin-top:8px;width:50px;height:28px;padding:4px;">${ff.id }</p>
                        <input type="hidden" id="menu_name" name="findid"  value="${ff.id}" required="" lay-verify="required" autocomplete="off" class="layui-input">
                            </div>
                            
                    </div>
                    
                    <div class="layui-form-item" >
                        <label for="menu_name" class="layui-form-label">
                            <span class="x-red">*</span>作者id</label>
                        <div class="layui-input-inline">
                        <p class="layui-input" style="position: absolute;margin-top:8px;width:50px;height:28px;padding:4px;">${ff.author }</p>
                            </div>
                            
                    </div>
                    
                    <div class="layui-form-item" >
                        <label for="menu_name" class="layui-form-label">
                            <span class="x-red">*</span>主题</label>
                        <div class="layui-input-inline">
                            <input type="text" id="menu_name" name="theme"  value="${ff.theme}" required="" lay-verify="required" autocomplete="off" class="layui-input"></div>
                    </div>
                    
                    <div class="layui-form-item">
                        <label for="menu_name" class="layui-form-label">
                            <span class="x-red">*</span>日期</label>
                        <div class="layui-input-inline">
                            <input type="date" id="menu_name" name="riqi" value="${ff.date}" required="" lay-verify="required" autocomplete="off" class="layui-input"></div>
                    </div>
                    
                    <div class="layui-form-item layui-form-text">
			            <label for="desc" class="layui-form-label">内容</label>
			            <div class="layui-input-block">
			                <textarea placeholder="请输入内容" id="desc" name="neirong"  class="layui-textarea">${ff.data} </textarea>
			            </div>
			        </div>
                    
						
                    
                    <div class="layui-form-item">
                        <label for="menu_photo" class="layui-form-label">
                            <span class="x-red">*</span>图片</label>
                        <div class="layui-input-inline">
                        	
                            <input type="button" name="file" onclick="add()" value="添加" style="margin-bottom:5px;"/>
                            <div id="fileDiv">
								<input type="file" name="myfile" required="" lay-verify="required" autocomplete="off" class="layui-input"/>
							</div>
					
							
                   		</div>
                   		
                    </div>
                    <div class="layui-form-item"><!-- 上下宽度的 -->
                        <label for="type" class="layui-form-label">
                            <span class="x-red">*</span>类型</label>
                        <div class="layui-input-inline"><!-- 限制长度的 -->
                            <select id="shipping" name="leixing"  class="valid">
                                <option value="1">早餐</option>
                                <option value="2">晚餐</option>
                                <option value="3">午餐</option>
                                <option value="4">甜点</option>
                                <option value="5">饮料</option>
                                <option value="6">火锅</option>
                                <option value="7">泡面</option>
                                </select>
                                <script language= JavaScript>
								     var job= <%=session.getAttribute("type")%>;//根据后台传值来动态改变它
								     document.getElementsByName("leixing")[0].value = job;
								     <% session.removeAttribute("ff");
										session.removeAttribute("type");%>
							    </script>
                        </div>
                    </div>
      		<div class="layui-form-item">
	            <label for="L_repass" class="layui-form-label"></label>
	            <input type="submit" class="layui-btn" onclick="aaa()" ></input>
            </div>
        </form>
        
        
        
        
      </div>
   </div>
 
        <script>layui.use(['form', 'layer'],
            function() {
                $ = layui.jquery;
                var form = layui.form,
                layer = layui.layer;

                //自定义验证规则
                form.verify({
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
                });

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

            });
        
      
        
        
        
        
        </script>
        <script>var _hmt = _hmt || []; (function() {
                var hm = document.createElement("script");
                hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
                var s = document.getElementsByTagName("script")[0];
                s.parentNode.insertBefore(hm, s);
            })();</script>
            
        
    </body>
	
</html>