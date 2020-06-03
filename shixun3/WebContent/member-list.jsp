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
        <script src="./lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="./js/xadmin.js"></script>
        <!--[if lt IE 9]>
          <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
          <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <div class="x-nav">
          <span class="layui-breadcrumb">
            <a href="">首页</a>
            <a href="">演示</a>
            <a>
              <cite>导航元素</cite></a>
          </span>
          <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
            <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
        </div>
        <div class="layui-fluid">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-body ">
                            <form class="layui-form layui-col-space5" action="admin/selectuser">
                                <!-- <div class="layui-inline layui-show-xs-block">
                                    <input class="layui-input"  autocomplete="off" placeholder="开始日" name="start" id="start">
                                </div>
                                <div class="layui-inline layui-show-xs-block">
                                    <input class="layui-input"  autocomplete="off" placeholder="截止日" name="end" id="end">
                                </div> -->
                                <div class="layui-inline layui-show-xs-block">
                                    <input type="text" name="userid" id="userid" placeholder="请输入用户ID" autocomplete="off" class="layui-input">
                                </div>
                                <div class="layui-inline layui-show-xs-block">
                                    <button class="layui-btn"  type="submit" lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                                </div>
                                <div class="layui-inline layui-show-xs-block" >
                                    <button class="layui-btn"  type="reset" lay-submit="" lay-filter="sreach" >
                                    	<a href="admin/resetuser" style="color:white">重置</a>
                                    </button>
                                </div>
                            </form>
                        </div>
                        <div class="layui-card-header">
                            <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
                            <button class="layui-btn" onclick="xadmin.open('添加用户','./member_add.jsp',800,600)"><i class="layui-icon"></i>添加</button>
                        </div>
                        <div class="layui-card-body layui-table-body layui-table-main">
                            <table class="layui-table layui-form">
                                <thead>
                                  <tr>
                                    <th>
                                      <input type="checkbox" lay-filter="checkall" name="" lay-skin="primary">
                                    </th>
                                    <th>ID</th>
                                    <th>用户名</th>
                                    <th>密码</th>
                                    <th>性别</th>
                                    <th>职业</th>
                                    <th>地址</th>
                                    <th>图片</th>
                                    <th>生日</th>
                                    <th>个性签名</th>
                                    <!-- <th>操作</th></tr> -->
                                </thead>
                                <tbody>
                                	<c:forEach items="${yonghu}" var="step">
									<tr>
                                    <td>
                                      <input type="checkbox" name="id" value="${ step.id}"   lay-skin="primary"> 
                                    </td>
                                    <td>${step.id }</td>
                                    <td>${step.username }</td>
                                    <td>${step.password }</td>
                                    <td>${step.sex }</td>
                                    <td>${step.profession }</td>
                                    <td>${step.home }</td>
                                    
                                    <td class="td-status">
                                      <img src="http://localhost:8080/shixun3/pic/${step.photo }" width="50" height="50" />
                                    </td>
                                    <td>${step.birthday }</td>
                                    <td>${step.label }</td> 
                                    <!-- <td class="td-manage">
                                      <a onclick="member_stop(this,'10001')" href="javascript:;"  title="启用">
                                        <i class="layui-icon">&#xe601;</i>
                                      </a>
                                      <a title="编辑"  onclick="xadmin.open('编辑','member-edit.html',600,400)" href="javascript:;">
                                        <i class="layui-icon">&#xe642;</i>
                                      </a>
                                      <a onclick="xadmin.open('修改密码','member-password.html',600,400)" title="修改密码" href="javascript:;">
                                        <i class="layui-icon">&#xe631;</i>
                                      </a>
                                      <a title="删除" onclick="member_del(this,'要删除的id')" href="javascript:;">
                                        <i class="layui-icon">&#xe640;</i>
                                      </a>
                                    </td> -->
                                  </tr>
	
	
	
								</c:forEach>
                                	
                                  
                                  
                                </tbody>
                            </table>
                        </div>
                        
                        
                        <div class="layui-card-body ">
                            <div class="page">
                                <div>
                                    <a class="prev"  href="./admin/userpage?userpaging=${(user_page-1)<0?0:user_page-1 }">&lt;&lt;</a>

                                    <a class="next" href="./admin/userpage?userpaging=${user_page+1 }">&gt;&gt;</a>
                                </div>
                            </div>
                        </div>
                        
                        
                         
                        
                        
                    </div>
                </div>
            </div>
        </div> 
    </body>
    <script>
      layui.use(['laydate','form'], function(){
        var laydate = layui.laydate;
        var  form = layui.form;


        // 监听全选
        form.on('checkbox(checkall)', function(data){

          if(data.elem.checked){
            $('tbody input').prop('checked',true);
          }else{
            $('tbody input').prop('checked',false);
          }
          form.render('checkbox');
        }); 
        
        //执行一个laydate实例
        laydate.render({
          elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
          elem: '#end' //指定元素
        });


      });

       /*用户-停用*/
      function member_stop(obj,id){
          layer.confirm('确认要停用吗？',function(index){

              if($(obj).attr('title')=='启用'){

                //发异步把用户状态进行更改
                $(obj).attr('title','停用')
                $(obj).find('i').html('&#xe62f;');

                $(obj).parents("tr").find(".td-status").find('span').addClass('layui-btn-disabled').html('已停用');
                layer.msg('已停用!',{icon: 5,time:1000});

              }else{
                $(obj).attr('title','启用')
                $(obj).find('i').html('&#xe601;');

                $(obj).parents("tr").find(".td-status").find('span').removeClass('layui-btn-disabled').html('已启用');
                layer.msg('已启用!',{icon: 5,time:1000});
              }
              
          });
      }

      /*用户-删除*/
      function member_del(obj,id){
          layer.confirm('确认要删除吗？',function(index){
              //发异步删除数据
              $(obj).parents("tr").remove();
              layer.msg('已删除!',{icon:1,time:1000});
          });
      }



      function delAll (argument) {
        var ids = "";

        // 获取选中的id 
        $('tbody input').each(function(index, el) {
            if($(this).prop('checked')){
               //ids.push($(this).val())
                ids+=($(this).val())+","          
            }
            
        });
        var test_str = JSON.stringify(ids );
        
        console.log(test_str);
        
        
        
        layer.confirm('确认要删除吗？'+ids.toString(),function(index){
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
            $(".layui-form-checked").not('.header').parents('tr').remove();
            
            //window.loaction.href='/deleteuser?test_str='+test_str;
        });
        
        var xmlhttp;
    	if (window.XMLHttpRequest)
    	{
    		//  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
    		xmlhttp=new XMLHttpRequest();
    	}
    	else
    	{
    		// IE6, IE5 浏览器执行代码
    		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    	}
    	xmlhttp.open("GET","admin/deleteuser?test_str="+test_str,true);
    	xmlhttp.send();

       
      }
    </script>
</html>