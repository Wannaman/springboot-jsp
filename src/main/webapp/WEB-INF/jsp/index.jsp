<%@ page import="java.util.Enumeration" %>
<%@ page language="java" pageEncoding="utf-8" contentType="text/html; UTF-8" %>
<script type="text/javascript">
    <%String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/demo";
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

    <link rel="stylesheet" href="/css/layui/css/layui.css"  media="all">
    <script type="text/javascript" src="/css/layui/layui.all.js"></script>
    <script type="text/javascript" src="/js/jquery.js"></script>
</head>
<body>
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
                    <a href="javascript:;"><!--<span class="layui-badge-dot" style="left:0; right: auto; margin: -4px 0 0 5px;"></span>--> 周边</a>
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
                        <dd lay-unselect><a href="/admin/" target="_blank">后台模板 <span class="layui-badge-dot" style="margin-top: -5px;"></span></a></dd>
                        <dd lay-unselect><a href="/layim/" target="_blank">即时聊天</a><hr></dd>

                        <dd lay-unselect><a href="/alone.html" target="_blank" lay-unselect>独立组件</a></dd>
                    </dl>
                </li>



                <li class="layui-nav-item layui-hide-xs" lay-unselect>
                    <a href="/admin/" target="_blank">后台模板 <span class="layui-badge-dot" style="margin-top: -5px;"></span></a>
                </li>
            </ul>
        </div>
    </div>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <![endif]-->
    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">

            <ul class="layui-nav layui-nav-tree site-demo-nav">

                <li class="layui-nav-item layui-nav-itemed">
                    <a class="javascript:;" href="javascript:;">组件示例</a>
                    <dl class="layui-nav-child">
                        <dd class="layui-this">
                            <a  href="javascript:void(0);" onclick="getIndexPage();">
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
                        <dd class="">
                            <a  href="javascript:void(0);" onclick="getReportPage();">按钮</a>
                        </dd>
                    </dl>
                </li>

            </ul>

        </div>
    </div>
    <div class="layui-tab layui-tab-brief" lay-filter="demoTitle">
        <ul class="layui-tab-title site-demo-title">
            <li class="layui-this">预览</li>
            <li>查看代码</li>
            <li>帮助</li>
        </ul>
        <div class="layui-body layui-tab-content site-demo site-demo-body">


            <div class="layui-tab-item layui-show">
                <div class="layui-main">
                    <div id="LAY_preview">

                        <blockquote class="layui-elem-quote">
                            大部分演示都在layer独立组件的官网，与内置的layer模块，用法是完全一致的
                        </blockquote>
                        <a class="layui-btn layui-btn-normal" href="http://layer.layui.com/" target="_blank">前去layer官网</a>

                        <fieldset class="layui-elem-field layui-field-title site-demo-button" style="margin-top: 30px;">
                            <legend>特殊例子</legend>
                        </fieldset>

                        <div class="site-demo-button" id="layerDemo" style="margin-bottom: 0;">
                            <blockquote class="layui-elem-quote layui-quote-nm">
                                Tips：为了更清晰演示，每触发下述一个例子之前，都会关闭所有已经演示的层
                            </blockquote>
                            <button data-method="setTop" class="layui-btn">多窗口模式，层叠置顶</button>
                            <button data-method="confirmTrans" class="layui-btn">配置一个透明的询问框</button>
                            <button data-method="notice" class="layui-btn">示范一个公告层</button>
                            <button data-method="offset" data-type="t" class="layui-btn layui-btn-normal">上弹出</button>
                            <button data-method="offset" data-type="r" class="layui-btn layui-btn-normal">右弹出</button>
                            <button data-method="offset" data-type="b" class="layui-btn layui-btn-normal">下弹出</button>
                            <button data-method="offset" data-type="l" class="layui-btn layui-btn-normal">左弹出</button>
                            <button data-method="offset" data-type="lt" class="layui-btn layui-btn-normal">左上弹出</button>
                            <button data-method="offset" data-type="lb" class="layui-btn layui-btn-normal">左下弹出</button>
                            <button data-method="offset" data-type="rt" class="layui-btn layui-btn-normal">右上弹出</button>
                            <button data-method="offset" data-type="rb" class="layui-btn layui-btn-normal">右下弹出</button>
                            <button data-method="offset" data-type="auto" class="layui-btn layui-btn-normal">居中弹出</button>
                        </div>

                        <!-- 示例-970 -->
                        <ins class="adsbygoogle"
                             style="display:inline-block;width:970px;height:90px"
                             data-ad-client="ca-pub-6111334333458862"
                             data-ad-slot="3820120620"></ins>

                        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
                            <legend>再次温馨提醒</legend>
                        </fieldset>
                        <p class="site-demo-text">本页演示是采用了Layui加载的layer，如果你使用的是独立版的layer，无需通过layui.use('layer')来加载。Layui中的layer与独立版的layer的唯一不同，就是加载方式这一点有所差异，请阅读文档：<a href="http://www.layui.com/doc/modules/layer.html#use" target="_blank">http://www.layui.com/doc/modules/layer.html#use</a></p>
                    </div>

                </div>
            </div>


            <div class="layui-tab-item">
<textarea class="layui-border-box site-demo-text site-demo-code" id="LAY_democode" spellcheck="false" readonly>
</textarea>
            </div>


            <div class="layui-tab-item">
                <div class="layui-main">
                    <p></p>



                    <div style="margin: 15px 0;">
                        <ins class="adsbygoogle"
                             style="display:inline-block;width:970px;height:90px"
                             data-ad-client="ca-pub-6111334333458862"
                             data-ad-slot="6835627838"></ins>
                    </div>



                    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
                        <legend>相关</legend>
                    </fieldset>
                    <a class="layui-btn layui-btn-normal" href="/doc/modules/layer.html" target="_blank">layer文档</a>
                </div>
            </div>


        </div>
    </div>
    <div class="site-tree-mobile layui-hide">
        <i class="layui-icon">&#xe602;</i>
    </div>
    <div class="site-mobile-shade"></div>

</div>
<div id="LAY_democodejs">

    <script>
        layui.use('layer', function(){ //独立版的layer无需执行这一句
            var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

            //触发事件
            var active = {
                setTop: function(){
                    var that = this;
                    //多窗口模式，层叠置顶
                    layer.open({
                        type: 2 //此处以iframe举例
                        ,title: '当你选择该窗体时，即会在最顶端'
                        ,area: ['390px', '260px']
                        ,shade: 0
                        ,maxmin: true
                        ,offset: [ //为了演示，随机坐标
                            Math.random()*($(window).height()-300)
                            ,Math.random()*($(window).width()-390)
                        ]
                        ,content: '//layer.layui.com/test/settop.html'
                        ,btn: ['继续弹出', '全部关闭'] //只是为了演示
                        ,yes: function(){
                            $(that).click();
                        }
                        ,btn2: function(){
                            layer.closeAll();
                        }

                        ,zIndex: layer.zIndex //重点1
                        ,success: function(layero){
                            layer.setTop(layero); //重点2
                        }
                    });
                }
                ,confirmTrans: function(){
                    //配置一个透明的询问框
                    layer.msg('大部分参数都是可以公用的<br>合理搭配，展示不一样的风格', {
                        time: 20000, //20s后自动关闭
                        btn: ['明白了', '知道了', '哦']
                    });
                }
                ,notice: function(){
                    //示范一个公告层
                    layer.open({
                        type: 1
                        ,title: false //不显示标题栏
                        ,closeBtn: false
                        ,area: '300px;'
                        ,shade: 0.8
                        ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
                        ,btn: ['火速围观', '残忍拒绝']
                        ,btnAlign: 'c'
                        ,moveType: 1 //拖拽模式，0或者1
                        ,content: '<div style="padding: 50px; line-height: 22px; background-color: #393D49; color: #fff; font-weight: 300;">你知道吗？亲！<br>layer ≠ layui<br><br>layer只是作为Layui的一个弹层模块，由于其用户基数较大，所以常常会有人以为layui是layerui<br><br>layer虽然已被 Layui 收编为内置的弹层模块，但仍然会作为一个独立组件全力维护、升级。<br><br>我们此后的征途是星辰大海 ^_^</div>'
                        ,success: function(layero){
                            var btn = layero.find('.layui-layer-btn');
                            btn.find('.layui-layer-btn0').attr({
                                href: 'http://www.layui.com/'
                                ,target: '_blank'
                            });
                        }
                    });
                }
                ,offset: function(othis){
                    var type = othis.data('type')
                        ,text = othis.text();

                    layer.open({
                        type: 1
                        ,offset: type //具体配置参考：http://www.layui.com/doc/modules/layer.html#offset
                        ,id: 'layerDemo'+type //防止重复弹出
                        ,content: '<div style="padding: 20px 100px;">'+ text +'</div>'
                        ,btn: '关闭全部'
                        ,btnAlign: 'c' //按钮居中
                        ,shade: 0 //不显示遮罩
                        ,yes: function(){
                            layer.closeAll();
                        }
                    });
                }
            };

            $('#layerDemo .layui-btn').on('click', function(){
                var othis = $(this), method = othis.data('method');
                active[method] ? active[method].call(this, othis) : '';
            });

        });
    </script>
</div>
<script>
    function getIndexPage() {
        var btn= $(this);
        window.location.href=window.location.origin+"/index";
    };
</script>
</body>