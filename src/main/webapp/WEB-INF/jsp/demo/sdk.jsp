<%@ page language="java" pageEncoding="utf-8" contentType="text/html; UTF-8" %>
<script type="text/javascript">
    <%String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/demo";
    String html = (String) request.getAttribute("data");
    %>
</script>
<head>
    <meta charset="utf-8">
    <title>layer弹出层 - 在线演示 - Layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">

    <link rel="stylesheet" href="/css/layui/css/layui.css" media="all">
    <script type="text/javascript" src="/css/layui/layui.all.js"></script>
    <script type="text/javascript" src="/js/jquery.js"></script>
</head>
<body>
<script>
    /*$(document).ready(function () {
        $.get("/getSdk", function (data) {
            document.getElementById("frame1").src = data;
            $("#frame1").css("display", "");
        })
    })*/

    function getIndexPage() {
        var btn = $(this);
        window.location.href = window.location.origin + "/index";
    };
    function getReportPage() {
        var btn= $(this);
        window.location.href=window.location.origin+"/getSdk";
    };
</script>
<div class="layui-layout layui-layout-admin">


    <div class="layui-header header header-demo" summer>
        <div class="layui-main">
            <div class="layui-form component" lay-filter="LAY-site-header-component"></div>
            <ul class="layui-nav">
                <li class="layui-nav-item ">
                    <a href="/doc/">文档<!-- <span class="layui-badge-dot"></span> --></a>
                </li>
                <li class="layui-nav-item layui-this">
                    <a href="/demo/">示例<!--  --></a>
                </li>


                <li class="layui-nav-item layui-hide-xs">
                    <a href="//fly.layui.com/" target="_blank">社区</a>
                </li>

                <li class="layui-nav-item">
                    <a href="javascript:;">
                        <!--<span class="layui-badge-dot" style="left:0; right: auto; margin: -4px 0 0 5px;"></span>-->
                        周边</a>
                    <dl class="layui-nav-child" style="left: auto; right: -22px; text-align: center;">
                        <dd lay-unselect>
                            <a href="//fly.layui.com/extend/" target="_blank">扩展组件</a>
                        </dd>
                        <dd lay-unselect>
                            <a href="//fly.layui.com/store/" target="_blank">模板市场</a>
                            <hr>
                        </dd>

                        <dd class="layui-hide-sm layui-show-xs" lay-unselect>
                            <a href="//fly.layui.com/" target="_blank">社区交流</a>
                            <hr>
                        </dd>
                        <dd lay-unselect><a href="/admin/" target="_blank">后台模板 <span class="layui-badge-dot"
                                                                                      style="margin-top: -5px;"></span></a>
                        </dd>
                        <dd lay-unselect><a href="/layim/" target="_blank">即时聊天</a>
                            <hr>
                        </dd>

                        <dd lay-unselect><a href="/alone.html" target="_blank" lay-unselect>独立组件</a></dd>
                        <dd lay-unselect><a href="https://fly.layui.com/jie/24209/" target="_blank">Axure 组件</a>
                            <hr>
                        </dd>

                        <dd lay-unselect>
                            <a href="https://www.layuicdn.com/?from=layui" target="_blank" id="layui-spm-event-layuicdn"
                               rel="nofollow">
                                layui cdn
                            </a>
                        </dd>
                        <dd lay-unselect>
                            <a href="https://fly.layui.com/jump/alyhot/" target="_blank" id="layui-spm-event-aliyun">阿里云特惠
                                <span class="layui-badge-dot" style="margin-top: -5px;"></span></a>
                        </dd>
                    </dl>
                </li>


                <li class="layui-nav-item layui-hide-xs" lay-unselect>
                    <a href="/admin/" target="_blank">后台模板 <span class="layui-badge-dot"
                                                                 style="margin-top: -5px;"></span></a>
                </li>
            </ul>
        </div>
    </div>
    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">

            <ul class="layui-nav layui-nav-tree site-demo-nav">

                <li class="layui-nav-item layui-nav-itemed">
                    <a class="javascript:;" href="javascript:;">组件示例</a>
                    <dl class="layui-nav-child">
                        <dd class="">
                            <a href="javascript:void(0);" onclick="getIndexPage();">
                                弹出层
                            </a>
                        </dd>
                        <%--<dd class="">
                            <a href="/demo/laydate.html">
                                日期与时间选择
                            </a>
                        </dd>--%>
                    </dl>
                </li>
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="javascript:;" href="javascript:;">基本元素</a>
                    <dl class="layui-nav-child">
                        <dd class="layui-this">
                            <a href="javascript:void(0);" onclick="getReportPage();">按钮</a>
                        </dd>
                    </dl>
                </li>
            </ul>

        </div>
    </div>
    <div class="layui-tab layui-tab-brief" lay-filter="demoTitle">
        <div class="layui-body layui-tab-content site-demo site-demo-body">
<%--            <iframe id="frame1" frameborder="0" style="width:100%;height: 100%;overflow-y: auto"/>--%>
            <%=html%>
        </div>
    </div>
</div>
<script>
</script>
</body>
