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
        <script src="./jquery-3.5.1.min.js"></script>
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
                <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i>
            </a>
        </div>
        <div class="layui-fluid">
            <div class="layui-row layui-col-space15">

                <div class="layui-col-md12">

                    <div class="layui-card">
                         <div class="layui-card-body ">
                            <form 	 class="layui-form layui-col-space5" action="./admin/search_comments">
                               内容<div class="layui-input-inline layui-show-xs-block">

                                    <input type="text" id="content" name="content"  class="layui-input">
                                </div>

                                <input type="submit" />
                            </form>
                        </div>
                        <div class="layui-card-header">

                          
                            <button class="layui-btn" onclick="xadmin.open('添加评论','./goods_add.jsp',800,600)">
                                <i class="layui-icon"></i>添加</button></div>
                        <div class="layui-card-body ">
                            <table class="layui-table layui-form">
                                <thead>
                                    <tr>
                                        <th>
                                            <input type="checkbox" name="" lay-skin="primary"></th>
                                        <th>评论编号</th>
                                        <th>评论内容</th>
                                        <th>评论时间</th>
                                    
                                        <th>服务质量</th>
                                        <th>物流质量</th>
                                        <th>产品描述</th>
                                        <th>商品编号</th>
                                        <th>用户编号</th>
                                        <th>操作</th>
                                        </tr>
                                </thead>
                                <tbody>
                                	<c:forEach items="${comments}" var="step">
                                		<tr>
                                        <td>
                                            <input type="checkbox" name="" lay-skin="primary"></td>
                                        <td>${step.id }</td>
                                        <td>${step.content }</td>
                                        <td>${step.time } </td>
                                        
                                        
                                        <td>${step.r1 }</td>
                                        <td>${step.r2 }</td>
                                        <td>${step.r3 }</td>
                                        <td>${step.goodsId }</td>
                                        <td>${step.user.id }</td>
                                        
                                        <!-- <td>其他方式</td>
                                        <td>申通物流</td>
                                        <td>2017-08-17 18:22</td> -->
                                        <td class="td-manage">
                                            
                                            <a title="删除" onclick="member_del(this,'${step.user.id}','${step.goodsId}')" href="javascript:;">
                                                <i class="layui-icon">&#xe640;</i></a>
                                        </td>
                                    </tr>
                                	
                                	</c:forEach>
                                
            
                                   
                                  <!--   <tr>
                                        <td>
                                            <input type="checkbox" name="" lay-skin="primary"></td>
                                        <td>2017009171822298053</td>
                                        <td>老王:18925139194</td>
                                        <td>7829.10</td>
                                        <td>7854.10</td>
                                        <td>待确认</td>
                                        <td>未支付</td>
                                        <td>未发货</td>
                                        <td>其他方式</td>
                                        <td>申通物流</td>
                                        <td>2017-08-17 18:22</td>
                                        <td class="td-manage">
                                            <a title="查看" onclick="xadmin.open('编辑','order-view.html')" href="javascript:;">
                                                <i class="layui-icon">&#xe63c;</i></a>
                                            <a title="删除" onclick="member_del(this,'要删除的id')" href="javascript:;">
                                                <i class="layui-icon">&#xe640;</i></a>
                                        </td>
                                    </tr> -->
                                    
                                </tbody>
                            </table>
                        </div>
                        <div class="layui-card-body ">
                            <div class="page">
                                <div>
                                    <a class="prev"  href="./admin/page?page=${(comments_page-1)<0?0:comments_page-1 }">&lt;&lt;</a>
                                    <!-- <a class="num" href="">1</a>
                                    <span class="current">2</span>
                                    <a class="num" href="">3</a>
                                    <a class="num" href="">489</a> -->
                                    <a class="next" href="./admin/page?page=${comments_page+1 }">&gt;&gt;</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script>
    layui.use(['laydate', 'form'],
        function() {
            var laydate = layui.laydate;

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
        function member_stop(obj, id) {
            layer.confirm('确认要停用吗？',
            function(index) {

                if ($(obj).attr('title') == '启用') {

                    //发异步把用户状态进行更改
                    $(obj).attr('title', '停用');
                    $(obj).find('i').html('&#xe62f;');

                    $(obj).parents("tr").find(".td-status").find('span').addClass('layui-btn-disabled').html('已停用');
                    layer.msg('已停用!', {
                        icon: 5,
                        time: 1000
                    });

                } else {
                    $(obj).attr('title', '启用');
                    $(obj).find('i').html('&#xe601;');

                    $(obj).parents("tr").find(".td-status").find('span').removeClass('layui-btn-disabled').html('已启用');
                    layer.msg('已启用!', {
                        icon: 5,
                        time: 1000
                    });
                }

            });
        }

        /*用户-删除*/
     function  member_del(obj, id,id1) {
    	 $.get("./admin/delete", {"id1":id, "id2":id1}, function(data){
 	       	/* var re = eval(data); */
 	       	console.log(data)
 			if(data=="faile"){
 	        	$("#info").text("账号密码错误！");
 	        }else{
 	        	$(obj).parents("tr").remove();
 	        	
 	        }
 	    });
              
         
        }

        function delAll(argument) {

            var data = tableCheck.getData();

            layer.confirm('确认要删除吗？' + data,
            function(index) {
                //捉到所有被选中的，发异步进行删除
                layer.msg('删除成功', {
                    icon: 1
                });
                $(".layui-form-checked").not('.header').parents('tr').remove();
            });
        }</script>

</html>